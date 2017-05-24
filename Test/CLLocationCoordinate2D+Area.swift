//
//  CLLocationCoordinate2D+Area.swift
//  GeometryUtilities
//
//  Created by Lluís Ulzurrun de Asanza Sàez on 22/5/17.
//
//

import XCTest
import GeometryUtilities
import Nimble

class CLLocationCoordinate2DAreaTest: XCTestCase {
    
    func test__fails_when_not_enough_coordinates() {
        
        expect {
            let array = [CLLocationCoordinate2D](
                repeating: CLLocationCoordinate2D.zero,
                count: 0
            )
            _ = array.area()
            return nil
        }.to(throwAssertion())
        
        expect {
            let array = [CLLocationCoordinate2D](
                repeating: CLLocationCoordinate2D.zero,
                count: 1
            )
            _ = array.area()
            return nil
        }.to(throwAssertion())
        
        expect {
            let array = [CLLocationCoordinate2D](
                repeating: CLLocationCoordinate2D.zero,
                count: 2
            )
            _ = array.area()
            return nil
        }.to(throwAssertion())
        
    }
    
    func test_illinois() {
        
        let wkt = "MULTIPOLYGON(((-88.071564 37.51099,-88.087883 37.476273,-88.311707 37.442852,-88.359177 37.409309,-88.419853 37.420292,-88.467644 37.400757,-88.511322 37.296852,-88.501427 37.257782,-88.450699 37.205669,-88.422516 37.15691,-88.45047 37.098671,-88.476799 37.072144,-88.4907 37.06818,-88.517273 37.06477,-88.559273 37.072815,-88.61422 37.109047,-88.68837 37.13541,-88.739113 37.141182,-88.746506 37.152107,-88.863289 37.202194,-88.932503 37.218407,-88.993172 37.220036,-89.065033 37.18586,-89.116821 37.112137,-89.146347 37.093185,-89.169548 37.064236,-89.174332 37.025711,-89.150246 36.99844,-89.12986 36.988113,-89.193512 36.986771,-89.210052 37.028973,-89.237679 37.041733,-89.264053 37.087124,-89.284233 37.091244,-89.303291 37.085384,-89.3097 37.060909,-89.264244 37.027733,-89.262001 37.008686,-89.282768 36.999207,-89.310982 37.009682,-89.38295 37.049213,-89.37999 37.099083,-89.423798 37.137203,-89.440521 37.165318,-89.468216 37.224266,-89.465309 37.253731,-89.489594 37.256001,-89.513885 37.276402,-89.513885 37.304962,-89.50058 37.329441,-89.468742 37.339409,-89.435738 37.355717,-89.427574 37.411018,-89.453621 37.453186,-89.494781 37.491726,-89.524971 37.571957,-89.513367 37.615929,-89.51918 37.650375,-89.513374 37.67984,-89.521523 37.694798,-89.581436 37.706104,-89.666458 37.745453,-89.675858 37.78397,-89.691055 37.804794,-89.728447 37.840992,-89.851715 37.905064,-89.861046 37.905487,-89.866814 37.891876,-89.900551 37.875904,-89.937874 37.878044,-89.978912 37.911884,-89.958229 37.963634,-90.010811 37.969318,-90.041924 37.993206,-90.119339 38.032272,-90.134712 38.053951,-90.207527 38.088905,-90.254059 38.122169,-90.289635 38.166817,-90.336716 38.188713,-90.364769 38.234299,-90.369347 38.323559,-90.358688 38.36533,-90.339607 38.390846,-90.301842 38.427357,-90.265785 38.518688,-90.26123 38.532768,-90.240944 38.562805,-90.183708 38.610271,-90.183578 38.658772,-90.20224 38.700363,-90.196571 38.723965,-90.163399 38.773098,-90.135178 38.785484,-90.121727 38.80051,-90.113121 38.830467,-90.132812 38.853031,-90.243927 38.914509,-90.278931 38.924717,-90.31974 38.924908,-90.413071 38.96233,-90.469841 38.959179,-90.530426 38.891609,-90.570328 38.871326,-90.627213 38.880795,-90.668877 38.935253,-90.70607 39.037792,-90.707588 39.058178,-90.690399 39.0937,-90.716736 39.144211,-90.718193 39.195873,-90.732338 39.224747,-90.738083 39.24781,-90.779343 39.296803,-90.850494 39.350452,-90.947891 39.400585,-91.036339 39.444412,-91.064384 39.473984,-91.093613 39.528927,-91.156189 39.552593,-91.203247 39.600021,-91.317665 39.685917,-91.367088 39.72464,-91.373421 39.761272,-91.381714 39.803772,-91.449188 39.863049,-91.450989 39.885242,-91.434052 39.901829,-91.430389 39.921837,-91.447243 39.946064,-91.487289 40.005753,-91.504005 40.066711,-91.516129 40.134544,-91.506546 40.200459,-91.498932 40.251377,-91.486694 40.309624,-91.448593 40.371902,-91.418816 40.386875,-91.385757 40.392361,-91.372757 40.402988,-91.385399 40.44725,-91.374794 40.503654,-91.382103 40.528496,-91.412872 40.547993,-91.411118 40.572971,-91.37561 40.603439,-91.262062 40.639545,-91.214912 40.643818,-91.162498 40.656311,-91.129158 40.682148,-91.119987 40.705402,-91.092751 40.761547,-91.088905 40.833729,-91.04921 40.879585,-90.983276 40.923927,-90.960709 40.950504,-90.954651 41.070362,-90.957787 41.104359,-90.990341 41.144371,-91.018257 41.165825,-91.05632 41.176258,-91.101524 41.231522,-91.102348 41.267818,-91.07328 41.334896,-91.055786 41.401379,-91.027489 41.423508,-91.000694 41.431084,-90.949654 41.421234,-90.844139 41.444622,-90.7799 41.449821,-90.708214 41.450062,-90.658791 41.462318,-90.6007 41.509586,-90.54084 41.52597,-90.454994 41.527546,-90.434967 41.543579,-90.423004 41.567272,-90.348366 41.586849,-90.339348 41.602798,-90.341133 41.64909,-90.326027 41.722736,-90.304886 41.756466,-90.25531 41.781738,-90.195839 41.806137,-90.154518 41.930775,-90.14267 41.983963,-90.150536 42.033428,-90.168098 42.061043,-90.166649 42.103745,-90.176086 42.120502,-90.191574 42.122688,-90.230934 42.159721,-90.323601 42.197319,-90.367729 42.210209,-90.407173 42.242645,-90.417984 42.263924,-90.427681 42.340633,-90.441597 42.360073,-90.491043 42.388783,-90.563583 42.421837,-90.605827 42.46056,-90.648346 42.475643,-90.651772 42.494698,-90.638329 42.509361,-90.419975 42.508362,-89.923569 42.504108,-89.834618 42.50346,-89.400497 42.49749,-89.359444 42.497906,-88.939079 42.490864,-88.764954 42.490906,-88.70652 42.489655,-88.297897 42.49197,-88.194702 42.489613,-87.79731 42.489132,-87.836945 42.314213,-87.760239 42.156456,-87.670547 42.059822,-87.612625 41.847332,-87.529861 41.723591,-87.532646 41.469715,-87.532448 41.301304,-87.531731 41.173756,-87.532021 41.00993,-87.532669 40.745411,-87.53717 40.49461,-87.535675 40.483246,-87.535339 40.166195,-87.535774 39.887302,-87.535576 39.609341,-87.538567 39.477448,-87.540215 39.350525,-87.597664 39.338268,-87.625237 39.307404,-87.610619 39.297661,-87.615799 39.281418,-87.606895 39.258163,-87.584564 39.248753,-87.588593 39.208466,-87.594208 39.198128,-87.607925 39.196068,-87.644257 39.168507,-87.670326 39.146679,-87.659454 39.130653,-87.662262 39.113468,-87.631668 39.103943,-87.630867 39.088974,-87.612007 39.084606,-87.58532 39.062435,-87.581749 38.995743,-87.591858 38.994083,-87.547905 38.977077,-87.53347 38.963703,-87.530182 38.931919,-87.5392 38.904861,-87.559059 38.869812,-87.550507 38.857891,-87.507889 38.795559,-87.519028 38.776699,-87.508003 38.769722,-87.508316 38.736633,-87.543892 38.685974,-87.588478 38.672169,-87.625191 38.642811,-87.628647 38.622917,-87.619827 38.599209,-87.640594 38.593178,-87.652855 38.573872,-87.672943 38.547424,-87.65139 38.515369,-87.653534 38.500443,-87.679909 38.504005,-87.692818 38.481533,-87.756096 38.466125,-87.758659 38.457096,-87.738953 38.44548,-87.748428 38.417965,-87.784019 38.378124,-87.834503 38.352524,-87.850082 38.286098,-87.863007 38.285362,-87.874039 38.316788,-87.883446 38.315552,-87.888466 38.300659,-87.914108 38.281048,-87.913651 38.302345,-87.925919 38.304771,-87.980019 38.241085,-87.986008 38.234814,-87.977928 38.200714,-87.932289 38.171131,-87.931992 38.157528,-87.950569 38.136913,-87.973503 38.13176,-88.018547 38.103302,-88.012329 38.092346,-87.964867 38.096748,-87.975296 38.073307,-88.034729 38.054085,-88.043091 38.04512,-88.041473 38.038303,-88.021698 38.033531,-88.029213 38.008236,-88.021706 37.975056,-88.042511 37.956264,-88.041771 37.934498,-88.064621 37.929783,-88.078941 37.944,-88.084 37.92366,-88.030441 37.917591,-88.026588 37.905758,-88.044868 37.896004,-88.100082 37.90617,-88.101456 37.895306,-88.075737 37.867809,-88.034241 37.843746,-88.042137 37.827522,-88.089264 37.831249,-88.086029 37.817612,-88.035576 37.805683,-88.072472 37.735401,-88.133636 37.700745,-88.15937 37.660686,-88.157631 37.628479,-88.134171 37.583572,-88.071564 37.51099)))"
        
        let polygons = WKT.polygons(in: wkt)
        
        expect(polygons).to(haveCount(1))
        expect(polygons.first).toNot(beNil())
        
        let polygon = polygons.first!
        
        expect(polygon.coordinates().area()).to(beCloseTo(145978332359.37125, within: 1))
        
        
    }
    
    func test__triangular() {
        
        let coordinates = [
            CLLocationCoordinate2D(latitude: -0.33408522605895996, longitude: 39.58952214829947),
            CLLocationCoordinate2D(latitude: -0.3340168297290802, longitude: 39.58948390897039),
            CLLocationCoordinate2D(latitude: -0.33394575119018555, longitude: 39.5895490191667)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(34.13, within: 1))
        
    }
    
    func test__rectangular() {
        
        let coordinates = [
            CLLocationCoordinate2D(latitude: -0.332736074924469, longitude: 39.58969474176536),
            CLLocationCoordinate2D(latitude: -0.33261001110076904, longitude: 39.58976501922113),
            CLLocationCoordinate2D(latitude: -0.3323766589164734, longitude: 39.58960896183308),
            CLLocationCoordinate2D(latitude: -0.33247455954551697, longitude: 39.5895211148043)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(361.88, within: 1))
        
    }
    
    func test__circular() {
        
        let coordinates = [
            CLLocationCoordinate2D(latitude: -0.33220432698726654, longitude: 39.59001196268675),
            CLLocationCoordinate2D(latitude: -0.33218923956155777, longitude: 39.5900117043148),
            CLLocationCoordinate2D(latitude: -0.332174152135849, longitude: 39.5900083454794),
            CLLocationCoordinate2D(latitude: -0.3321617469191551, longitude: 39.59000266129603),
            CLLocationCoordinate2D(latitude: -0.33215269446372986, longitude: 39.58999620199618),
            CLLocationCoordinate2D(latitude: -0.3321463242173195, longitude: 39.58998948432371),
            CLLocationCoordinate2D(latitude: -0.3321416303515434, longitude: 39.58998121641823),
            CLLocationCoordinate2D(latitude: -0.3321386128664017, longitude: 39.58997191502336),
            CLLocationCoordinate2D(latitude: -0.33213794231414795, longitude: 39.58996028827804),
            CLLocationCoordinate2D(latitude: -0.33214330673217773, longitude: 39.5899465945533),
            CLLocationCoordinate2D(latitude: -0.3321496769785881, longitude: 39.58993703478156),
            CLLocationCoordinate2D(latitude: -0.33215872943401337, longitude: 39.58993005873109),
            CLLocationCoordinate2D(latitude: -0.3321681171655655, longitude: 39.58992463291357),
            CLLocationCoordinate2D(latitude: -0.3321801871061325, longitude: 39.58992075732938),
            CLLocationCoordinate2D(latitude: -0.33219292759895325, longitude: 39.58991972384022),
            CLLocationCoordinate2D(latitude: -0.33220667392015457, longitude: 39.58991998221253),
            CLLocationCoordinate2D(latitude: -0.33221907913684845, longitude: 39.58992230756307),
            CLLocationCoordinate2D(latitude: -0.3322301432490349, longitude: 39.5899261831472),
            CLLocationCoordinate2D(latitude: -0.332239530980587, longitude: 39.589931867336844),
            CLLocationCoordinate2D(latitude: -0.3322475776076317, longitude: 39.58993806827047),
            CLLocationCoordinate2D(latitude: -0.33225394785404205, longitude: 39.589947111297654),
            CLLocationCoordinate2D(latitude: -0.33225763589143753, longitude: 39.58995770455662),
            CLLocationCoordinate2D(latitude: -0.33225931227207184, longitude: 39.58996907293026),
            CLLocationCoordinate2D(latitude: -0.3322552889585495, longitude: 39.58998018292996),
            CLLocationCoordinate2D(latitude: -0.33225059509277344, longitude: 39.58999077618385),
            CLLocationCoordinate2D(latitude: -0.33224254846572876, longitude: 39.589998010600205),
            CLLocationCoordinate2D(latitude: -0.3322324901819229, longitude: 39.59000524501581),
            CLLocationCoordinate2D(latitude: -0.3322197496891022, longitude: 39.5900101540830)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(83.93, within: 1))
        
    }
    
    func test__concav() {
     
        let coordinates = [
            CLLocationCoordinate2D(latitude: -0.3327883780002594, longitude: 39.58902964576533),
            CLLocationCoordinate2D(latitude: -0.33276088535785675, longitude: 39.58905083256214),
            CLLocationCoordinate2D(latitude: -0.33268511295318604, longitude: 39.58900277469664),
            CLLocationCoordinate2D(latitude: -0.3326549381017685, longitude: 39.58902706200916),
            CLLocationCoordinate2D(latitude: -0.33271394670009613, longitude: 39.58907822036305),
            CLLocationCoordinate2D(latitude: -0.33266767859458923, longitude: 39.5891107756595),
            CLLocationCoordinate2D(latitude: -0.33256642520427704, longitude: 39.58902912901412),
            CLLocationCoordinate2D(latitude: -0.3326616436243057, longitude: 39.5889474822725)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(138, within: 1))
        
    }
    
    func test__finland() {
        
        let coordinates = [
            CLLocationCoordinate2D(latitude: 26.836504340171814, longitude: 69.44820382429701),
            CLLocationCoordinate2D(latitude: 26.83634340763092, longitude: 69.44801173699521),
            CLLocationCoordinate2D(latitude: 26.836504340171814, longitude: 69.44782341444363),
            CLLocationCoordinate2D(latitude: 26.836557984352112, longitude: 69.4476614557288),
            CLLocationCoordinate2D(latitude: 26.836670637130737, longitude: 69.44760119170924),
            CLLocationCoordinate2D(latitude: 26.8368798494339, longitude: 69.44763697349124),
            CLLocationCoordinate2D(latitude: 26.837148070335388, longitude: 69.44763697349124),
            CLLocationCoordinate2D(latitude: 26.837931275367737, longitude: 69.44755222706888),
            CLLocationCoordinate2D(latitude: 26.838660836219788, longitude: 69.44778763297217),
            CLLocationCoordinate2D(latitude: 26.8386447429657, longitude: 69.44792699205131),
            CLLocationCoordinate2D(latitude: 26.838473081588745, longitude: 69.44803433559048),
            CLLocationCoordinate2D(latitude: 26.838178038597107, longitude: 69.44807576628666),
            CLLocationCoordinate2D(latitude: 26.837732791900635, longitude: 69.44806823343878),
            CLLocationCoordinate2D(latitude: 26.8375825881958, longitude: 69.44812472973372),
            CLLocationCoordinate2D(latitude: 26.837260723114014, longitude: 69.44813226256181),
            CLLocationCoordinate2D(latitude: 26.837035417556763, longitude: 69.4481190801109),
            CLLocationCoordinate2D(latitude: 26.83682084083557, longitude: 69.44812849614809),
            CLLocationCoordinate2D(latitude: 26.836697459220886, longitude: 69.4481868754865)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(4474.24, within: 1))
        
    }
    
    func test__south_africa() {
        
        let coordinates = [
            CLLocationCoordinate2D(latitude: 22.96514332294464, longitude: -33.758361837182186),
            CLLocationCoordinate2D(latitude: 22.96493947505951, longitude: -33.7583484574344),
            CLLocationCoordinate2D(latitude: 22.964826822280884, longitude: -33.758580372767064),
            CLLocationCoordinate2D(latitude: 22.964504957199097, longitude: -33.75871416978898),
            CLLocationCoordinate2D(latitude: 22.96438694000244, longitude: -33.758897025381174),
            CLLocationCoordinate2D(latitude: 22.96444594860077, longitude: -33.75912447935394),
            CLLocationCoordinate2D(latitude: 22.964783906936646, longitude: -33.75939653135224),
            CLLocationCoordinate2D(latitude: 22.965030670166016, longitude: -33.75949464825452),
            CLLocationCoordinate2D(latitude: 22.965717315673828, longitude: -33.75934747285898),
            CLLocationCoordinate2D(latitude: 22.965781688690186, longitude: -33.759004062620015),
            CLLocationCoordinate2D(latitude: 22.965540289878845, longitude: -33.758856886382155),
            CLLocationCoordinate2D(latitude: 22.965357899665833, longitude: -33.7587855281152)
        ]
        
        let areaInM2 = coordinates.area()
        
        expect(areaInM2).to(beCloseTo(9941.48, within: 1))
        
    }
    
}

