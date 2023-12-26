import os
import pandas as pd

def merge_csv_files(folder_path, target_file_name):
    # Full path to the target file
    target_file_path = os.path.join(folder_path, target_file_name)
    
    # Find .csv files in the folder
    csv_files = [file for file in os.listdir(folder_path) if file.endswith('.csv')]
    
    # Create the target file and copy the data from the first file
    first_file = pd.read_csv(os.path.join(folder_path, csv_files[0]))
    first_file.to_csv(target_file_path, index=False)
    
    # Append data from the other files to the target file
    for file_name in csv_files[1:]:
        file_path = os.path.join(folder_path, file_name)
        file_data = pd.read_csv(file_path)
        file_data.to_csv(target_file_path, mode='a', header=False, index=False)

# Example of usage:
folder_path = '/Users/burakpolat/Desktop/Used-Cars-Data-Analysis/scraped'
target_file_name = 'merged_file.csv'
merge_csv_files(folder_path, target_file_name)
