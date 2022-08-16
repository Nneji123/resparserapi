from resume_parser import resumeparse

def main():
    data = resumeparse.read_file('resume2.pdf')
    print(data)

if __name__=="__main__":
    main()