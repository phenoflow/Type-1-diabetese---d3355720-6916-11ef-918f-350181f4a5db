# phekb, 2024.

import sys, csv, re

codes = [{"code":"1567944","system":"ICD10CM"},{"code":"1567951","system":"ICD10CM"},{"code":"35206878","system":"ICD10CM"},{"code":"45542736","system":"ICD10CM"},{"code":"45547624","system":"ICD10CM"},{"code":"45552381","system":"ICD10CM"},{"code":"1567944","system":"ICD10CM"},{"code":"45552381","system":"ICD10CM"},{"code":"45542736","system":"ICD10CM"},{"code":"1567951","system":"ICD10CM"},{"code":"45547624","system":"ICD10CM"},{"code":"35206878","system":"ICD10CM"},{"code":"44819504","system":"ICD10CM"},{"code":"44829881","system":"ICD10CM"},{"code":"44833368","system":"ICD10CM"},{"code":"44836918","system":"ICD10CM"},{"code":"44836918","system":"ICD10CM"},{"code":"44833368","system":"ICD10CM"},{"code":"44829881","system":"ICD10CM"},{"code":"44819504","system":"ICD10CM"},{"code":"1567944","system":"ICD10CM"},{"code":"1567951","system":"ICD10CM"},{"code":"35206878","system":"ICD10CM"},{"code":"45542736","system":"ICD10CM"},{"code":"45547624","system":"ICD10CM"},{"code":"45552381","system":"ICD10CM"},{"code":"1567944","system":"ICD10CM"},{"code":"45552381","system":"ICD10CM"},{"code":"45542736","system":"ICD10CM"},{"code":"1567951","system":"ICD10CM"},{"code":"45547624","system":"ICD10CM"},{"code":"35206878","system":"ICD10CM"},{"code":"44819504","system":"ICD10CM"},{"code":"44829881","system":"ICD10CM"},{"code":"44833368","system":"ICD10CM"},{"code":"44836918","system":"ICD10CM"},{"code":"44836918","system":"ICD10CM"},{"code":"44833368","system":"ICD10CM"},{"code":"44829881","system":"ICD10CM"},{"code":"44819504","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-1-diabetese-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-1-diabetese-specified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-1-diabetese-specified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-1-diabetese-specified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
