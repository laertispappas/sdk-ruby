# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/sdk/core/workflow_commands/workflow_commands.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'temporal/api/failure/v1/message_pb'
require 'temporal/sdk/core/child_workflow/child_workflow_pb'
require 'temporal/sdk/core/common/common_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("temporal/sdk/core/workflow_commands/workflow_commands.proto", :syntax => :proto3) do
    add_message "coresdk.workflow_commands.WorkflowCommand" do
      oneof :variant do
        optional :start_timer, :message, 1, "coresdk.workflow_commands.StartTimer"
        optional :schedule_activity, :message, 2, "coresdk.workflow_commands.ScheduleActivity"
        optional :respond_to_query, :message, 3, "coresdk.workflow_commands.QueryResult"
        optional :request_cancel_activity, :message, 4, "coresdk.workflow_commands.RequestCancelActivity"
        optional :cancel_timer, :message, 5, "coresdk.workflow_commands.CancelTimer"
        optional :complete_workflow_execution, :message, 6, "coresdk.workflow_commands.CompleteWorkflowExecution"
        optional :fail_workflow_execution, :message, 7, "coresdk.workflow_commands.FailWorkflowExecution"
        optional :continue_as_new_workflow_execution, :message, 8, "coresdk.workflow_commands.ContinueAsNewWorkflowExecution"
        optional :cancel_workflow_execution, :message, 9, "coresdk.workflow_commands.CancelWorkflowExecution"
        optional :set_patch_marker, :message, 10, "coresdk.workflow_commands.SetPatchMarker"
        optional :start_child_workflow_execution, :message, 11, "coresdk.workflow_commands.StartChildWorkflowExecution"
        optional :cancel_unstarted_child_workflow_execution, :message, 12, "coresdk.workflow_commands.CancelUnstartedChildWorkflowExecution"
        optional :request_cancel_external_workflow_execution, :message, 13, "coresdk.workflow_commands.RequestCancelExternalWorkflowExecution"
        optional :signal_external_workflow_execution, :message, 14, "coresdk.workflow_commands.SignalExternalWorkflowExecution"
        optional :cancel_signal_workflow, :message, 15, "coresdk.workflow_commands.CancelSignalWorkflow"
        optional :schedule_local_activity, :message, 16, "coresdk.workflow_commands.ScheduleLocalActivity"
        optional :request_cancel_local_activity, :message, 17, "coresdk.workflow_commands.RequestCancelLocalActivity"
        optional :upsert_workflow_search_attributes_command_attributes, :message, 18, "coresdk.workflow_commands.UpsertWorkflowSearchAttributes"
      end
    end
    add_message "coresdk.workflow_commands.StartTimer" do
      optional :seq, :uint32, 1
      optional :start_to_fire_timeout, :message, 2, "google.protobuf.Duration"
    end
    add_message "coresdk.workflow_commands.CancelTimer" do
      optional :seq, :uint32, 1
    end
    add_message "coresdk.workflow_commands.ScheduleActivity" do
      optional :seq, :uint32, 1
      optional :activity_id, :string, 2
      optional :activity_type, :string, 3
      optional :namespace, :string, 4
      optional :task_queue, :string, 5
      map :headers, :string, :message, 6, "coresdk.common.Payload"
      repeated :arguments, :message, 7, "coresdk.common.Payload"
      optional :schedule_to_close_timeout, :message, 8, "google.protobuf.Duration"
      optional :schedule_to_start_timeout, :message, 9, "google.protobuf.Duration"
      optional :start_to_close_timeout, :message, 10, "google.protobuf.Duration"
      optional :heartbeat_timeout, :message, 11, "google.protobuf.Duration"
      optional :retry_policy, :message, 12, "coresdk.common.RetryPolicy"
      optional :cancellation_type, :enum, 13, "coresdk.workflow_commands.ActivityCancellationType"
      optional :do_not_eagerly_execute, :bool, 14
    end
    add_message "coresdk.workflow_commands.ScheduleLocalActivity" do
      optional :seq, :uint32, 1
      optional :activity_id, :string, 2
      optional :activity_type, :string, 3
      optional :attempt, :uint32, 4
      optional :original_schedule_time, :message, 5, "google.protobuf.Timestamp"
      map :headers, :string, :message, 6, "coresdk.common.Payload"
      repeated :arguments, :message, 7, "coresdk.common.Payload"
      optional :schedule_to_close_timeout, :message, 8, "google.protobuf.Duration"
      optional :schedule_to_start_timeout, :message, 9, "google.protobuf.Duration"
      optional :start_to_close_timeout, :message, 10, "google.protobuf.Duration"
      optional :retry_policy, :message, 11, "coresdk.common.RetryPolicy"
      optional :local_retry_threshold, :message, 12, "google.protobuf.Duration"
      optional :cancellation_type, :enum, 13, "coresdk.workflow_commands.ActivityCancellationType"
    end
    add_message "coresdk.workflow_commands.RequestCancelActivity" do
      optional :seq, :uint32, 1
    end
    add_message "coresdk.workflow_commands.RequestCancelLocalActivity" do
      optional :seq, :uint32, 1
    end
    add_message "coresdk.workflow_commands.QueryResult" do
      optional :query_id, :string, 1
      oneof :variant do
        optional :succeeded, :message, 2, "coresdk.workflow_commands.QuerySuccess"
        optional :failed, :message, 3, "temporal.api.failure.v1.Failure"
      end
    end
    add_message "coresdk.workflow_commands.QuerySuccess" do
      optional :response, :message, 1, "coresdk.common.Payload"
    end
    add_message "coresdk.workflow_commands.CompleteWorkflowExecution" do
      optional :result, :message, 1, "coresdk.common.Payload"
    end
    add_message "coresdk.workflow_commands.FailWorkflowExecution" do
      optional :failure, :message, 1, "temporal.api.failure.v1.Failure"
    end
    add_message "coresdk.workflow_commands.ContinueAsNewWorkflowExecution" do
      optional :workflow_type, :string, 1
      optional :task_queue, :string, 2
      repeated :arguments, :message, 3, "coresdk.common.Payload"
      optional :workflow_run_timeout, :message, 4, "google.protobuf.Duration"
      optional :workflow_task_timeout, :message, 5, "google.protobuf.Duration"
      map :memo, :string, :message, 6, "coresdk.common.Payload"
      map :headers, :string, :message, 7, "coresdk.common.Payload"
      map :search_attributes, :string, :message, 8, "coresdk.common.Payload"
    end
    add_message "coresdk.workflow_commands.CancelWorkflowExecution" do
    end
    add_message "coresdk.workflow_commands.SetPatchMarker" do
      optional :patch_id, :string, 1
      optional :deprecated, :bool, 2
    end
    add_message "coresdk.workflow_commands.StartChildWorkflowExecution" do
      optional :seq, :uint32, 1
      optional :namespace, :string, 2
      optional :workflow_id, :string, 3
      optional :workflow_type, :string, 4
      optional :task_queue, :string, 5
      repeated :input, :message, 6, "coresdk.common.Payload"
      optional :workflow_execution_timeout, :message, 7, "google.protobuf.Duration"
      optional :workflow_run_timeout, :message, 8, "google.protobuf.Duration"
      optional :workflow_task_timeout, :message, 9, "google.protobuf.Duration"
      optional :parent_close_policy, :enum, 10, "coresdk.child_workflow.ParentClosePolicy"
      optional :workflow_id_reuse_policy, :enum, 12, "coresdk.common.WorkflowIdReusePolicy"
      optional :retry_policy, :message, 13, "coresdk.common.RetryPolicy"
      optional :cron_schedule, :string, 14
      map :headers, :string, :message, 15, "coresdk.common.Payload"
      map :memo, :string, :message, 16, "coresdk.common.Payload"
      map :search_attributes, :string, :message, 17, "coresdk.common.Payload"
      optional :cancellation_type, :enum, 18, "coresdk.child_workflow.ChildWorkflowCancellationType"
    end
    add_message "coresdk.workflow_commands.CancelUnstartedChildWorkflowExecution" do
      optional :child_workflow_seq, :uint32, 1
    end
    add_message "coresdk.workflow_commands.RequestCancelExternalWorkflowExecution" do
      optional :seq, :uint32, 1
      oneof :target do
        optional :workflow_execution, :message, 2, "coresdk.common.NamespacedWorkflowExecution"
        optional :child_workflow_id, :string, 3
      end
    end
    add_message "coresdk.workflow_commands.SignalExternalWorkflowExecution" do
      optional :seq, :uint32, 1
      optional :signal_name, :string, 4
      repeated :args, :message, 5, "coresdk.common.Payload"
      map :headers, :string, :message, 6, "coresdk.common.Payload"
      oneof :target do
        optional :workflow_execution, :message, 2, "coresdk.common.NamespacedWorkflowExecution"
        optional :child_workflow_id, :string, 3
      end
    end
    add_message "coresdk.workflow_commands.CancelSignalWorkflow" do
      optional :seq, :uint32, 1
    end
    add_message "coresdk.workflow_commands.UpsertWorkflowSearchAttributes" do
      optional :seq, :uint32, 1
      map :search_attributes, :string, :message, 2, "coresdk.common.Payload"
    end
    add_enum "coresdk.workflow_commands.ActivityCancellationType" do
      value :TRY_CANCEL, 0
      value :WAIT_CANCELLATION_COMPLETED, 1
      value :ABANDON, 2
    end
  end
end

module Coresdk
  module WorkflowCommands
    WorkflowCommand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.WorkflowCommand").msgclass
    StartTimer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.StartTimer").msgclass
    CancelTimer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.CancelTimer").msgclass
    ScheduleActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.ScheduleActivity").msgclass
    ScheduleLocalActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.ScheduleLocalActivity").msgclass
    RequestCancelActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.RequestCancelActivity").msgclass
    RequestCancelLocalActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.RequestCancelLocalActivity").msgclass
    QueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.QueryResult").msgclass
    QuerySuccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.QuerySuccess").msgclass
    CompleteWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.CompleteWorkflowExecution").msgclass
    FailWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.FailWorkflowExecution").msgclass
    ContinueAsNewWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.ContinueAsNewWorkflowExecution").msgclass
    CancelWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.CancelWorkflowExecution").msgclass
    SetPatchMarker = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.SetPatchMarker").msgclass
    StartChildWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.StartChildWorkflowExecution").msgclass
    CancelUnstartedChildWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.CancelUnstartedChildWorkflowExecution").msgclass
    RequestCancelExternalWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.RequestCancelExternalWorkflowExecution").msgclass
    SignalExternalWorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.SignalExternalWorkflowExecution").msgclass
    CancelSignalWorkflow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.CancelSignalWorkflow").msgclass
    UpsertWorkflowSearchAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.UpsertWorkflowSearchAttributes").msgclass
    ActivityCancellationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.workflow_commands.ActivityCancellationType").enummodule
  end
end