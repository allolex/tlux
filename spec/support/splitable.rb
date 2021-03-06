shared_examples_for Tlux::Splitable do
  describe "#split" do
    let(:orientation) { :vertical }
    let(:opts) { {:height => 20} }

    it "should create a new pane" do
      splitable.split(orientation, opts)
      splitable.panes.first.should be_kind_of Tlux::Pane
    end

    it "should add the new pane to the list of panes" do
      expect {
        splitable.split orientation, opts
      }.to change(splitable.panes, :size).by(1)
    end

    it "should call the passed block with the context of the new pane" do
      pane = nil

      splitable.split :vertical do
        pane = self
      end

      pane.should be_kind_of(Tlux::Pane)
      pane.orientation.should_not be_nil
    end
  end
end
