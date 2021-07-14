at_exit do
    # encoding: utf-8
    require 'report_builder'
    ReportBuilder.input_path = "reports/report.json"
    ReportBuilder.configure do |config|
        config.report_path = "reports/report"
        config.report_types = [:json, :html]
        config.encoding = "utf-8"
        config.color = 'blue'
        config.additional_css = 'features/support/css_report_builder.css'
    end
    ReportBuilder.build_report
end