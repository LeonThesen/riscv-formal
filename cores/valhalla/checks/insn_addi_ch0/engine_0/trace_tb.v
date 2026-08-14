`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [0:0] PI_reset;
  wire [0:0] PI_clock = clock;
  rvfi_testbench UUT (
    .reset(PI_reset),
    .clock(PI_clock)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31586 = 32'b00000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31589 = 13'b0000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31592 = 32'b11000010000001000000001110100000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31595 = 32'b11010010001010110000011100000111;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31598 = 5'b00000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31601 = 32'b00000000000000000001011000001100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31604 = 32'b00000000000000000001000000010100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31607 = 5'b01110;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31610 = 1'b0;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31616 = 1'b0;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31619 = 32'b00000000000000000001101000001000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31622 = 1'b0;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31625 = 2'b11;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31628 = 2'b10;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31631 = 3'b010;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31634 = 4'b1011;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31637 = 2'b01;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__dc_ex_pipeline_reg_i__procdff_31640 = 5'b00000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__divider_i__procdff_31643 = 1'b1;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31646 = 32'b00000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31649 = 13'b0111111111111;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31652 = 32'b00000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31655 = 5'b00100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31658 = 5'b11100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31664 = 1'b0;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__ex_mem_pipeline_reg_i__procdff_31667 = 32'b10110011101000101011100100101100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__if_dc_pipeline_reg_i__procdff_31670 = 32'b01000110001010110001010000000011;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__if_dc_pipeline_reg_i__procdff_31673 = 32'b00000000000000000000101011110100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__if_dc_pipeline_reg_i__procdff_31676 = 1'b0;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__if_dc_pipeline_reg_i__procdff_31679 = 32'b01010001100000000000110001101111;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__if_dc_pipeline_reg_i__procdff_31682 = 2'b01;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__mem_wb_pipeline_reg_i__procdff_31686 = 32'b00000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__mem_wb_pipeline_reg_i__procdff_31689 = 13'b0111111111111;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__mem_wb_pipeline_reg_i__procdff_31692 = 5'b00100;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__mem_wb_pipeline_reg_i__procdff_31695 = 32'b11010010001010110000011100000111;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__pf_if_pipeline_reg_i__procdff_31701 = 32'b00000000000000000010100010101010;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__procdff_31707 = 383'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__procdff_31710 = 383'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__procdff_31713 = 351'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__procdff_31716 = 351'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__procdff_31719 = 351'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__cpu_i__register_file_i__procdff_31704 = 992'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100000001010000111100100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000100000010000010001100001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_flatten_wrapper__dut__io_i__io_memory_i__procdff_31578 = 512'b10100000000100000000100000100011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.cycle_reg = 8'b00000000;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb._2_ = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags._2_ = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses._2_ = 32'b00000000000000000000101011110100;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits._2_ = 1'b1;
    UUT.wrapper.dut.cpu_i.control_status_register_file_i._4_ = 1'b1;
    UUT.wrapper.dut.cpu_i.control_status_register_file_i.csr_register_array._2_ = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i._2_ = 32'b11111111111111110111111111111111;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0958_ = 5'b00000;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0959_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0960_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0961_ = 3'b111;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0962_ = 7'b0000000;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0963_ = 7'b1000001;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0964_ = 36'b111100011111111110000000000001011101;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0965_ = 33'b011011111111111101101111111110110;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0966_ = 32'b00000000000000000000000000000100;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0967_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0968_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0969_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0970_ = 1'b0;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0971_ = 32'b10000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.divider_i.divider_i._0972_ = 32'b01111110000100000000011100010000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i._2_ = 32'b01101111111100000001111111111111;
    UUT.wrapper.dut.res_synchronizer_i._0_ = 1'b1;
    UUT.wrapper.dut.res_synchronizer_i._1_ = 1'b1;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1000101010] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1010111101] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b0000000011] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b0000000100] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b0000000101] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1010111100] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1010111110] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1010111111] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000000] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000001] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000010] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000011] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000100] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000101] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000110] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011000111] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011001000] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011001001] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.bpb.memory[10'b1011001010] = 2'b00;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1000101010] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1010111101] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b0000000011] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b0000000100] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b0000000101] = 20'b00000000000000000001;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1010111100] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1010111110] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1010111111] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000000] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000001] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000010] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000011] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000100] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000101] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000110] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011000111] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011001000] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011001001] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_tags.memory[10'b1011001010] = 20'b00000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1000101010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1010111101] = 32'b00000000000000000001000000001100;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b0000000011] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b0000000100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b0000000101] = 32'b00000000100000000000101011110001;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1010111100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1010111110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1010111111] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000001] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000011] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000101] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011000111] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011001000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011001001] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_target_addresses.memory[10'b1011001010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1000101010] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1010111101] = 1'b1;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b0000000011] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b0000000100] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b0000000101] = 1'b1;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1010111100] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1010111110] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1010111111] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000000] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000001] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000010] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000011] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000100] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000101] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000110] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011000111] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011001000] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011001001] = 1'b0;
    UUT.wrapper.dut.cpu_i.bpu_i.btc_valid_bits.memory[10'b1011001010] = 1'b0;
    UUT.wrapper.dut.cpu_i.control_status_register_file_i.csr_register_array.memory[12'b000000000000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b0000000110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b0010101010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b0000000000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b1111111111] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b0000011000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b1111111110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b1111110101] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b1111111100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.data_memory_i.memory[10'b0011111000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1000101010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1010111101] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b0000000011] = 32'b00000000000100001000000010110011;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b0000000100] = 32'b00000000000100001000000010110011;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b0000000101] = 32'b00000000000100001000000010110011;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1010111100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1010111110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1010111111] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000001] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000010] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000011] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000100] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000101] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000110] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011000111] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011001000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011001001] = 32'b00000000000000000000000000000000;
    UUT.wrapper.dut.cpu_i.instruction_memory_i.\:2901 [10'b1011001010] = 32'b00000000000000000000000000000000;

    // state 0
    PI_reset = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_reset <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_reset <= 1'b0;
    end

    // state 4
    if (cycle == 3) begin
      PI_reset <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_reset <= 1'b0;
    end

    // state 6
    if (cycle == 5) begin
      PI_reset <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      PI_reset <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      PI_reset <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      PI_reset <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      PI_reset <= 1'b0;
    end

    // state 11
    if (cycle == 10) begin
      PI_reset <= 1'b0;
    end

    // state 12
    if (cycle == 11) begin
      PI_reset <= 1'b0;
    end

    // state 13
    if (cycle == 12) begin
      PI_reset <= 1'b0;
    end

    // state 14
    if (cycle == 13) begin
      PI_reset <= 1'b0;
    end

    // state 15
    if (cycle == 14) begin
      PI_reset <= 1'b0;
    end

    // state 16
    if (cycle == 15) begin
      PI_reset <= 1'b0;
    end

    // state 17
    if (cycle == 16) begin
      PI_reset <= 1'b0;
    end

    // state 18
    if (cycle == 17) begin
      PI_reset <= 1'b0;
    end

    // state 19
    if (cycle == 18) begin
      PI_reset <= 1'b0;
    end

    // state 20
    if (cycle == 19) begin
      PI_reset <= 1'b0;
    end

    genclock <= cycle < 20;
    cycle <= cycle + 1;
  end
endmodule
