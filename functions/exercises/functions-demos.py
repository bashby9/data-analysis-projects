'''def cents_to_dollars(amount):
    return amount/100

result = cents_to_dollars(2500)
print("Results", result)

print(cents_to_dollars(2500) * 1.07) #add tax

def sum_and_average(a, b, c):
    total = a+b+c
    average = total/3
    return average
    print("This never runs")

result = sum_and_average(2, 4, 6)
print("returned valued:", result)

def show_sum(a,b):
    print( a+b)

def give_sum(a,b):
    return a+b

show = show_sum(2,3)
give = give_sum(2,3)

def calculate_tax(amount):
    return amount * 0.07 #calculate tax owed on amount and return the value

def total_with_tax(amount):
    tax = calculate_tax(amount)
    total= amount + tax
    return total 
print(total_with_tax(100))

def clean_amount(value):
    #remove dollar signs and commas, convert to float
    return float(value.replace("$", "").replace(",", ""))
def convert_to_usd(amount, conversion_rate):
    return amount * conversion_rate
def proceess_transaction(value, rate):
    #combine cleaning and convesion steps into one function 
    clean_val = clean_amount(value)
    return convert_to_usd(clean_val, rate)

print(proceess_transaction("$1,200", 1.1))'''

'''def standardize_label(label):
    return label.strip().lower()

def is_priority_category(label): 
    #check if cleaned label is in our priority list
    clean = standardize_label(label)
    return clean in["urgent", "high"]

print(is_priority_category(" High"))
print(is_priority_category("regular"))

def revenue_stat(values):
    total = sum(values)
    avg = total/(len(values))
    return total, avg 

total_revenue, avg_revenue = revenue_stat([1200, 900, 1100])
print(f"total revenue: {total_revenue} average revenue: {avg_revenue}")

def extract_domain(email):
    return email.split("@")[1]

def is_internal_email(email):
    return extract_domain(email).lower() == "mycompany.com"

print (is_internal_email("alex@mycompany.com"))
print(is_internal_email("person@gmail.com"))'''

def classify_scores(score):
    if score is "None":
        return "missing"
    if score >= 90:
        return "excellent"
    if score >= 75:
        return "solid"
    return "try again"

print (classify_scores("Nome"))