import Foundation

//: ### METHODS
//: Create a structure named `Student` with three properties: first name, last name and grade. Then create a structure named `Classroom` with two properties: the class name, and an array of students. Finally, create a method named `highestGrade()` that returns the highest grade in the classroom. Try using `reduce` on the array to perform the calculation.

// TODO: Write solution here

struct Student {
    let firstName: String
    let lastName: String
    var grade: Double
}

struct Classroom {
    let className: String
    var students : [Student]
    
    func highestGrade() -> Double {
        return students.reduce(0) {result, student in
            return student.grade > result ? student.grade : result
        }
    }
}

var maxim = Student(firstName: "Maxim", lastName: "Kholmansky", grade: 77)
var nastya = Student(firstName: "Nastya", lastName: "Kholmanskaya", grade: 50)

var classroom = Classroom(className: "Swift for beginners", students: [maxim, nastya])
classroom.highestGrade()

//: Make an extension on classroom with a method named `curveGrades()`. This method should find the difference between 100 and the highest grade, and add this amount to all students scores. Finally, sort the students array so they are ordered from the students with the highest score, to the students with the lowest score.
//: 
//: **Hint**: remember that structures are value types, so if you iterate with `for student in students` you'll get a constant copy of the student, not the student inside the array. Is there another way you can loop through the students in the array?

// TODO: Write solution here

extension Classroom {
    
    mutating func curveGrades(){
        let curveAmount = 100 - highestGrade()
        for i in 0..<students.count {
            students[i].grade += curveAmount
        }
        students.sort {student1, student2 in
            return student1.grade > student2.grade
        }
    }
}

classroom.curveGrades()
classroom.students[0].grade
classroom.students[1].grade

//: Make an extension on Student that implements `CustomStringConvertible`. It should return a string in this format: "[last name], [first name]: [grade]".

// TODO: Write solution here

extension Student: CustomStringConvertible {
    var description: String {
        return "\(lastName), \(firstName): \(grade)"
    }
    
}
for student in classroom.students {
    print (student)
}
//: Make an extension on Classroom that implements `CustomStringConvertible`. It should return a string with the classroom name, and a newline, followed by the list of students with a newline between each student.

// TODO: Write solution here

extension Classroom: CustomStringConvertible {
    var description : String {
        var retval = ""
        retval += "Classroom name: \(className)\n"
        for student in students {
            retval += "\(student)\n"
        }
        return retval
    }
}
print(classroom)
