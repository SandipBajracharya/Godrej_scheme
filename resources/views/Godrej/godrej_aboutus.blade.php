@extends('layouts.app')

@section('content')
    <div class="page-pad mobile-pad">
        <div class="container">
            <div class="col-lg-10 offset-lg-1">

                @include('messages.message')

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors -> all() as $error)
                                <li> {{$error}} </li>    
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="about-godrej">
                    <h4>About Godrej</h4>
                    <p>Godrej Appliances, a business unit of the highly diversified, Godrej & Boyce Mfg. Co. Ltd. is one of the largest players in the Home Appliances space in India. In 1958, Godrej was the first Indian Company to manufacture Refrigerators and has now become synonymous with the category. The company is present across India through 100+ Exclusive Brand Outlets in 25 states and union territories and through over 23000 dealer and retailer outlets. Godrej Appliances is known for delighting its consumers with innovative, relevant and green technologies. Godrej has created many milestones in the Indian appliance space – be it in the environment/energy efficiency space, including the launch of the first green AC in the world (2012), launch of the first green refrigerator in India (2001), launch of the first 5 star range of refrigerators (2008), launch of the first inverter AC in India (2005), the first refrigerator with 6 Star Performance (2012) or a pure consumer delight like the launch of Godrej Medical Refrigerators(2015) powered by Sure Chill Technology - specialised refrigerators designed to address the key need of providing precise cooling for temperature-sensitive lifesaving supplies, Godrej Edge Duo – India’s first single door refrigerator with a separate veggie drawer(2017), Godrej Eon Front Load washing machine with Allergy Protect Technology(2017) or India’s most environment friendly Chest Freezers(2017) or the latest among all – QUBE, a food and beverage cooler, powered by thermoelectric cooling technology that cools but does not freeze(2018). <br />
                        <br />
                        Godrej’s focus on balancing consumer needs with the environmental cause has enabled the organization to redefine the technology landscape in the appliances industry – to the delight of both the consumer and our planet. In 2015, both the manufacturing units of Godrej Appliances - in Shirwal and Mohali, became the first and only manufacturing units in the country to be honoured with the coveted Platinum Green Co certification (re-validated in 2019) for efforts in green manufacturing. Godrej Appliances was the first one to include R290 and R600a in its air conditioners and refrigerators respectively- natural hydrocarbons that are completely environment-friendly refrigerants, contributing to the fight against climate change. Through continuous improvement in quality, a deep commitment to on-time delivery, a continuous thrust on innovation and research, and a clear policy of keeping in line with the latest manufacturing technology, the company is fully equipped to match world-class standards.<br />
                        <br />
                        Godrej Appliances is one of the first organizations in the industry to have recognized Customer Service as a key brand differentiator. The company was the first to launch branded service offering in India called ‘Smart Care’, as early as 2002 and later, the first to introduce the concept of Customer Satisfaction Number in the industry, enabling customers to rate the service offered through a unique code. Today, it boasts of being one of the widest service networks with over 660 service centers, more than 4500 app enabled Smart Buddy technicians and a 24 x 7 call center with linguistic capability of up to 14 regional languages to cater to India’s diversity to the maximum. Godrej SmartCare was rated No.1 in after-sales service twice in a row, in a large scale independent consumer survey (2018, 2019).<br /><br />
                        
                        Godrej Appliances holds ISO 9001-2015, ISO 14001-2015 and ISO 45001 : 2018 Certificates awarded by TUV Nord. <br /><br />
                        
                        Godrej Appliances is a business unit of Godrej & Boyce Mfg. Co. Ltd.</p>
                </div>
            </div>
        </div>
    </div>
@endsection