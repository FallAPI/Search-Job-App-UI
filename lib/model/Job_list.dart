// ignore_for_file: file_names

class Job {
  String title;
  String company;
  String jobnature;
  String location;
  String applydate;
  String applybefore;
  String paymentRate;
  String description;
  String role;
  String imgasset;

  Job({
    required this.title,
    required this.company,
    required this.jobnature,
    required this.location,
    required this.applydate,
    required this.applybefore,
    required this.paymentRate,
    required this.description,
    required this.role,
    required this.imgasset,
  });
}

var jobList = [
  Job(
      title: "Mid-level UI/UX desiner",
      company: "Apple Inc",
      jobnature: "Full time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$100k-\$120k/Years",
      description:
          "Join our product design team and help us create outstanding user experiences for our customers. You'll work in a collaborative and dynamic environment where innovative ideas are encouraged and valued.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/apple-logo.png"),
  Job(
      title: "Junior Web Frontend Developer",
      company: "Mandiri Bank",
      jobnature: "Intern",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$50k-\$100K/Months",
      description:
          "Join our web development team as an intern and gain hands-on experience in web application development. We're looking for individuals who are eager to learn and grow in a dynamic environment. \n And Maintance our website and add more function to our web",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/mandiri-logo.png"),
  Job(
      title: "Senior Backend Developer",
      company: "Gojek",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$150K-\$200K/Years",
      description:
          "Join our talented backend development team and play a key role in designing, implementing, and maintaining scalable and high-performance backend systems. You'll work with cutting-edge technologies and collaborate with cross-functional teams to deliver innovative solutions.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/gojek-logo.png"),
  Job(
      title: "Junior Quality Assurance",
      company: "OVO",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$100k-\$120k/Years",
      description:
          "Join our quality assurance team and ensure the quality and reliability of our software products. You'll be responsible for testing and debugging software applications, identifying and reporting defects, and working closely with development teams to ensure timely delivery of high-quality software.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/ovo-logo.png"),
  Job(
      title: "Android Developer",
      company: "Grab",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$120k-\$170k/Years",
      description:
          "Join our Android development team and contribute to the development and maintenance of our Android applications. You'll work on designing and building user-friendly and efficient mobile applications, collaborating with cross-functional teams to deliver high-quality software solutions.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/grab-logo.png"),
  Job(
      title: "DevOps",
      company: "Google",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$150k-\$200k/Years",
      description:
          "Join our DevOps team and play a critical role in automating, deploying, and managing infrastructure and applications. You'll work on improving system reliability, scalability, and performance, implementing CI/CD pipelines, and ensuring smooth operations of our cloud-based services.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/google-logo.png"),
  Job(
      title: "Mechanic",
      company: "Yamaha",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$150k-\$200k/Years",
      description:
          "Join our team as a Mechanic and play a crucial role in maintaining and repairing motorcycles and other vehicles. You'll diagnose issues, perform regular maintenance, and ensure vehicles are safe and reliable for our customers.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/yamaha-logo.png"),
  Job(
      title: "Project Manager",
      company: "BCA Bank",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$150k-\$200k/Years",
      description:
          "Join our team as a Project Manager and lead strategic projects from inception to completion. You'll oversee project planning, execution, and delivery, manage resources and stakeholders, and ensure projects are completed on time and within budget.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/bca-logo.png"),
  Job(
      title: "Senior Backend Developer",
      company: "Hoyoverse",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$200k-\$250k/Years",
      description:
          "Join our talented team as a Senior Backend Developer for Game Development and lead the development of robust and scalable backend systems for our gaming platform. You'll design and implement server-side logic, database architectures, and APIs to support our games' functionality and performance.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/hoyoverse-logo.png"),
  Job(
      title: "Game Developer",
      company: "Hoyoverse",
      jobnature: "Full Time",
      location: "Work From Office",
      applydate: "2021/9/30",
      applybefore: "2021/10/2",
      paymentRate: "\$200k-\$250k/Years",
      description:
          "Join our dynamic team as a Game Developer and contribute to the creation of engaging and immersive gaming experiences. You'll work on various aspects of game development, including game design, programming, graphics, and sound, to bring our games to life.",
      role:
          "Ad ea laboris est sint Lorem tempor tempor fugiat ad. Aliquip reprehenderit labore sunt ex dolore amet id excepteur ea.\n Pariatur veniam cillum tempor ullamco duis deserunt cupid.",
      imgasset: "assets/image/hoyoverse-logo.png"),
];
