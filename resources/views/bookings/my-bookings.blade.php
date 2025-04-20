<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <style>
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)),
                        url('{{ asset('images/bg.webp') }}') no-repeat center center fixed;
            background-size: cover;
        }

        .sidebar {
    background-color: #2d3748; /* Matching the navbar color */
    color: white;
    padding: 40px 20px 20px 20px; /* Increased top padding to make the sidebar taller from the top */
    height: auto; /* Adjust height of sidebar based on content */
    width: 250px;
    margin-top: auto; /* Increased margin to create more space between navbar and sidebar */
}


        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 12px;
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #3182ce; /* Hover effect with Tailwind Blue */
            color: white;
        }

        .content {
            padding: 20px;
            margin-left: 270px; /* Adjust to leave space for the sidebar */
        }

        .navbar {
            background-color: #2d3748; /* Same color as sidebar */
        }

    </style>

    <!-- Navbar -->
    <nav class="navbar p-4 shadow-md">
        <div class="container mx-auto flex items-center justify-between">
            <div class="flex items-center space-x-4">
                <img src="{{ asset('images/logo.png') }}" alt="Logo" class="h-10">
                <div class="text-white text-2xl font-semibold">Connexplore System - User Dashbaord</div>
            </div>
            <div class="flex items-center space-x-4">
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <button type="submit" class="btn btn-light">Logout</button>
                </form>
            </div>
        </div>
    </nav>
<body>
    <div class="container mx-auto p-4">
        <h1 class="text-2xl font-bold mb-4 text-white">My Bookings</h1>

        @if(session('success'))
    <div class="alert alert-success mb-4">
        {{ session('success') }}
    </div>
@endif

@if(session('error'))
    <div class="alert alert-danger mb-4">
        {{ session('error') }}
    </div>
@endif

        @if ($bookings->isEmpty())
            <div class="alert alert-info" role="alert">
                No bookings found.
            </div>
        @else
            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="px-4 py-2">CBnumber</th>
                            <th class="px-4 py-2">Sport</th>
                            <th class="px-4 py-2">Equipment</th>
                            <th class="px-4 py-2">Location</th>
                            <th class="px-4 py-2">Date</th>
                            <th class="px-4 py-2">Time Slot</th>
                            <th class="px-4 py-2">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="border-b">
                        @foreach ($bookings as $booking)
                            <tr class="hover:bg-gray-50">
                                <td class="px-4 py-2">{{ $booking->cbnumber }}</td>
                                <td class="px-4 py-2">{{ $booking->sport_name }}</td>
                                <td class="px-4 py-2">{{ $booking->equipment_name }}</td>
                                <td class="px-4 py-2">{{ $booking->location_name }}</td>
                                <td class="px-4 py-2">{{ $booking->date->format('Y-m-d') }}</td>
                        <td class="px-4 py-2">{{ $booking->time_slot }}</td>
                        <td class="px-4 py-2">     
            @if($booking->canBeEdited())
                <a href="{{ route('bookings.edit', $booking->id) }}" class="btn btn-primary btn-sm">Edit</a>
            @else
                <span class="text-gray-500">Cannot edit past bookings</span>
            @endif

            <form action="{{ route('bookings.destroy', $booking->id) }}" method="POST" class="inline">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger btn-sm" 
                        onclick="return confirm('Are you sure you want to cancel this booking?')">
                    Cancel
                </button>
            </form>
        </td>


                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        @endif
    </div>

    <div class="text-center mt-4">
        <a href="{{ route('dashboard') }}" class="btn btn-primary">Go to Dashboard</a>
    </div>


</body>
<br><br><br><br><br><br><br><br>
<footer class="bg-black py-3">
    <div class="container mx-auto px-4">
        <div class="flex flex-col md:flex-row justify-between items-center mb-4">
            <div class="flex justify-center space-x-4 mb-4 md:mb-0">
                <a href="https://x.com/apiitsl?lang=en" class="text-gray-400 hover:text-gray-200" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-twitter fa-lg"></i>
                </a>
                <a href="https://www.facebook.com/APIITofficial" class="text-gray-400 hover:text-gray-200" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-facebook fa-lg"></i>
                </a>
                <a href="https://www.youtube.com/@APIITedu" class="text-gray-400 hover:text-gray-200" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-youtube fa-lg"></i>
                </a>
                <a href="https://www.linkedin.com/company/apiitsl" class="text-gray-400 hover:text-gray-200" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-linkedin fa-lg"></i>
                </a>
                <a href="https://www.instagram.com/apiitsl/" class="text-gray-400 hover:text-gray-200" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-instagram fa-lg"></i>
                </a>
            </div>
            <div class="flex justify-center space-x-4 flex-wrap">
                <img src="{{ asset('images/staf.png') }}" alt="University of Staffordshire" class="h-24 mb-4 md:mb-0">
                <img src="{{ asset('images/APIIT.png') }}" alt="Asian Institute of Technology" class="h-24 mb-4 md:mb-0">
                <img src="{{ asset('images/NCUK.png') }}" alt="NCUK" class="h-24 mb-4 md:mb-0">
                <img src="{{ asset('images/Southencross.png') }}" alt="Southern Cross University" class="h-24">
            </div>
        </div>
        <div class="flex flex-col md:flex-row justify-around text-gray-300 text-center md:text-left">
            <div class="mb-4 md:mb-0">
                <h4 class="text-white text-lg font-semibold">APIIT City Campus</h4>
                <address>
                    388, Union Place,<br>
                    Colombo 2, Sri Lanka.
                </address>
                <p>📞 +94 76 967 9448 - Chamalka</p>
                <p>📞 +94 76 858 3708 - Gihani</p>
                <p>📞 +94 77 753 5393 - Bimbisha</p>
            </div>
            <div class="mb-4 md:mb-0">
                <h4 class="text-white text-lg font-semibold mb-2">Subscribe to get new offers, tournaments, etc.</h4>
                <form onsubmit="event.preventDefault(); this.email.value='';">
                    <input type="email" name="email" placeholder="Your email" class="text-gray-800 px-4 py-2 rounded-l-lg focus:outline-none" required>
                    <button type="submit" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded-r-lg">Subscribe</button>
                </form>
            </div>
            <div>
                <h4 class="text-white text-lg font-semibold">APIIT Law School</h4>
                <address>
                    278, 3rd Floor, Access Towers,<br>
                    Colombo 2, Sri Lanka.
                </address>
                <p>📞 +94 76 967 9448 - Chamalka</p>
                <p>📞 +94 76 858 3708 - Gihani</p>
                <p>📞 +94 77 753 5393 - Bimbisha</p>
            </div>
        </div>
    </div>
</footer>
</html>
