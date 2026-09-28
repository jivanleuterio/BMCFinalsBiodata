import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jivan Leuterio Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily: 'Roboto',
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildContactInfo(),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Skills'),
                  _buildSkillsSection(),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Work Experience'),
                  _buildExperienceSection(),
                  const SizedBox(height: 24),
                  _buildSectionTitle('Education History'),
                  _buildEducationSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 16),
          const Text(
            'Jivan Leuterio',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 4),
          const Text(
            'FreeLancer | Web Developer',
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
          const SizedBox(height: 16),
          const Text(
            "I'm Jivan Leuterio, a Web Developer passionate about coding, quick to adapt, and detail-oriented in crafting efficient solutions.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white, height: 1.4),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ListTile(
              leading: Icon(Icons.email, color: Colors.indigo),
              title: Text('jivan23leuterio@gmail.com'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.indigo),
              title: Text('09945695781'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.indigo),
              title: Text('54 C. Gen Malvar Ext. St. B,B,C,C'),
              dense: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = [
      'Graphic & Web Design',
      'Web Developer',
      'Software Engineer',
      'Frontend Developer',
      'Backend Developer',
      'Problem Solver'
    ];

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: skills.map((skill) {
        return Chip(
          label: Text(skill),
          backgroundColor: Colors.indigo.withOpacity(0.1),
          labelStyle: const TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      }).toList(),
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      children: [
        _buildExperienceCard(
          role: 'Junior Software Engineer',
          company: 'CodeSprint Technologies',
          date: 'January 2024 – Present',
          description: 'Developing and maintaining software applications under senior guidance. Quickly adapting to new frameworks and coding practices. Troubleshooting issues and optimizing existing code for better performance.',
        ),
        const SizedBox(height: 12),
        _buildExperienceCard(
          role: 'Freelance Web Developer',
          company: 'Self-Employed',
          date: 'January 2022 – December 2022',
          description: 'Built and maintained websites for small businesses and personal brands. Developed custom WordPress themes and responsive designs. Improved client SEO rankings through optimized website structures.',
        ),
      ],
    );
  }

  Widget _buildExperienceCard({required String role, required String company, required String date, required String description}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(role, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text('$company | $date', style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
            const SizedBox(height: 12),
            Text(description, style: const TextStyle(fontSize: 14, height: 1.4)),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationSection() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _EducationTile(school: 'Global Reciprocal Collages', year: '2024-Current'),
            _EducationTile(school: "Horizon Institute Of Technology Corporation's", year: '2022-2024'),
            _EducationTile(school: 'Bagong Barrio National High School', year: '2021-2022'),
            _EducationTile(school: 'Bagong Barrio Elementary School', year: '2017-2018', isLast: true),
          ],
        ),
      ),
    );
  }
}

class _EducationTile extends StatelessWidget {
  final String school;
  final String year;
  final bool isLast;

  const _EducationTile({required this.school, required this.year, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.school, size: 20, color: Colors.indigo),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(school, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(year, style: const TextStyle(fontSize: 13, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}