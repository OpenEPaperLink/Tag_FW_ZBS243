import subprocess

# This code finds parts that use iram

# Run the "find . | grep .lst" command to get list of .lst files
result = subprocess.run("find . -name '*.lst'", shell=True, text=True, capture_output=True)
list_files = result.stdout.splitlines()

print("Files with data in internal memory:")

for file in list_files:
    with open(file, 'r') as f:
        data = f.read()

    if "; internal ram data" in data and "overlayable items" in data:
        data = data.split("; internal ram data", 1)[1]
        data = data.split("overlayable items", 1)[0].strip()

        filelist = data.splitlines()
        ret = []
        for row in filelist:
            row = row.strip()
            if ";" not in row and "DSEG" not in row:
                ret.append(row)

        if ret:
            print(f"{file}\n{'-'*53}")
            for row in ret:
                print(row)
