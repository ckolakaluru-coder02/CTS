class Computer {
    private String processor;
    private String ram;
    private String storage;

    public Computer(String processor, String ram, String storage) {
        this.processor = processor;
        this.ram = ram;
        this.storage = storage;
    }

    public void showConfiguration() {
        System.out.println("Processor: " + processor);
        System.out.println("RAM: " + ram);
        System.out.println("Storage: " + storage);
    }
}

class ComputerBuilder {
    private String processor;
    private String ram;
    private String storage;

    public ComputerBuilder setProcessor(String processor) {
        this.processor = processor;
        return this;
    }

    public ComputerBuilder setRam(String ram) {
        this.ram = ram;
        return this;
    }

    public ComputerBuilder setStorage(String storage) {
        this.storage = storage;
        return this;
    }

    public Computer build() {
        return new Computer(processor, ram, storage);
    }
}

public class Example {
    public static void main(String[] args) {
        Computer computer = new ComputerBuilder()
                .setProcessor("Intel i5")
                .setRam("16GB")
                .setStorage("512GB SSD")
                .build();

        computer.showConfiguration();
    }
}