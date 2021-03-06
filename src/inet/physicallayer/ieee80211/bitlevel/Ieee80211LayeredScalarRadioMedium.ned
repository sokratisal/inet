//
// Copyright (C) 2014 OpenSim Ltd.
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//

package inet.physicallayer.ieee80211.bitlevel;

import inet.physicallayer.common.packetlevel.RadioMedium;

module Ieee80211LayeredScalarRadioMedium extends RadioMedium
{
    parameters:
        propagation.typename = default("ConstantSpeedPropagation");
        pathLoss.typename = default("FreeSpacePathLoss");
        analogModel.typename = default("LayeredScalarAnalogModel");
        backgroundNoise.typename = default("IsotropicScalarBackgroundNoise");
        backgroundNoise.power = default(-110dBm);
        mediumLimitCache.carrierFrequency = default(2.4GHz);
        mediumLimitCache.minReceptionPower = default(-85dBm);
        mediumLimitCache.minInterferencePower = default(-110dBm);
}

