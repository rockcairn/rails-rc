# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

Peak.create!([
  {
    name: 'Mount Elbert',
    height: 14440,
    range: 'Sawatch',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/mount_elbert.php',
    description: 'Summit Report.',
    keywords: 'mount elbert',
    report_date: '2002-07-21',
    difficulty: 'II,1',
    roundtrip_miles: '7.6',
    elevation_gain: 4000,
    roundtrip_duration: '4.15',
    solo: true,
    combo: false,
    marker_id: 1
  },
  {
    name: 'Mount Massive',
    height: 14428,
    range: 'Sawatch',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/mount_massive.php',
    description: 'Summit Report.',
    keywords: 'mount massive',
    report_date: '2001-09-11',
    difficulty: 'II,2',
    roundtrip_miles: '6.3',
    elevation_gain: 3960,
    roundtrip_duration: '7.15',
    solo: true,
    combo: false,
    marker_id: 2
  },
  {
    name: 'Mount Harvard',
    height: 14427,
    range: 'Sawatch',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/harvard_group.php',
    description: 'Summit Report.',
    keywords: 'mount harvard',
    report_date: '2003-06-28',
    difficulty: 'II,2 (III,2)',
    roundtrip_miles: '13.5',
    elevation_gain: 5900,
    roundtrip_duration: '11.10',
    solo: false,
    combo: true,
    marker_id: 3
  },
  {
    name: 'Blanca Peak',
    height: 14349,
    range: 'Sangre de Cristo',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/blanca_group.php',
    description: 'Summit Report.',
    keywords: 'blanca peak',
    report_date: '2003-08-31',
    difficulty: 'III,2 (III,4)',
    roundtrip_miles: '15.1',
    elevation_gain: 6900,
    roundtrip_duration: '5.40',
    solo: true,
    combo: true,
    marker_id: 4
  },
  {
    name: 'La Plata Peak',
    height: 14343,
    range: 'Sawatch',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/la_plata_peak.php',
    description: 'Summit Report.',
    keywords: 'la plata peak',
    report_date: '2002-07-20',
    difficulty: 'II,2',
    roundtrip_miles: '9.0',
    elevation_gain: 4300,
    roundtrip_duration: '8.00',
    solo: false,
    combo: false,
    marker_id: 5
  },
  {
    name: 'Uncompahgre Peak',
    height: 14314,
    range: 'San Juan',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/uncompahgre_peak.php',
    description: 'Summit Report.',
    keywords: 'uncompahgre peak',
    report_date: '2004-08-21',
    difficulty: 'I,2',
    roundtrip_miles: '7.6',
    elevation_gain: 2870,
    roundtrip_duration: '4.20',
    solo: false,
    combo: false,
    marker_id: 6
  },
  {
    name: 'Crestone Peak',
    height: 14298,
    range: 'Sangre de Cristo',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/crestone_group.php',
    description: 'Summit Report.',
    keywords: 'crestone peak',
    report_date: '2003-08-09',
    difficulty: 'I,3 (II,4)',
    roundtrip_miles: '13.8',
    elevation_gain: 6500,
    roundtrip_duration: '15.20',
    solo: false,
    combo: true,
    marker_id: 7
  },
  {
    name: 'Mount Lincoln',
    height: 14291,
    range: 'Ten Mile',
    domain: 'http://www.rockcairn.com/',
    relative_path: 'mountain/lincoln_group.php',
    description: 'Summit Report.',
    keywords: 'mount lincoln',
    report_date: '2002-08-10',
    difficulty: 'II,2 (II,2)',
    roundtrip_miles: '7.0',
    elevation_gain: 3600,
    roundtrip_duration: '3.45',
    solo: true,
    combo: true,
    marker_id: 8
  }
])
