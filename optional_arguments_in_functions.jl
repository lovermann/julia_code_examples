# optional positional arguments in functions

# Example 1
function ShowConsumption(cc,winter=1)
    return round(winter*cc/170*1,2)
end

# outputs:

println(ShowConsumption(1950))
11.47

println(ShowConsumption(1950,2))
22.94



# Example 2
function CalculateSalary(shifts,kids=false)
    salary = shifts*300

    if kids == 1
        salary += 200
    end

    return salary
end

# outputs:
CalculateSalary(10)
300

CalculateSalary(10,true)
3200
