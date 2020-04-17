package com.microsoft.azure.storage.queue;

public final class QueueConstants {
    public static final String APPROXIMATE_MESSAGES_COUNT = "x-ms-approximate-messages-count";
    public static final int DEFAULT_VISIBILITY_MESSAGE_TIMEOUT_IN_SECONDS = 30;
    public static final String DEQUEUE_COUNT_ELEMENT = "DequeueCount";
    public static final String EXPIRATION_TIME_ELEMENT = "ExpirationTime";
    public static final String INSERTION_TIME_ELEMENT = "InsertionTime";
    public static final long MAX_MESSAGE_SIZE = 65536;
    public static final int MAX_NUMBER_OF_MESSAGES_TO_PEEK = 32;
    public static final int MAX_VISIBILITY_TIMEOUT_IN_SECONDS = 604800;
    public static final String MESSAGES = "messages";
    public static final String MESSAGE_ID_ELEMENT = "MessageId";
    public static final String MESSAGE_TEXT_ELEMENT = "MessageText";
    public static final String POP_RECEIPT_ELEMENT = "PopReceipt";
    public static final String QUEUES_ELEMENT = "Queues";
    public static final String QUEUE_ELEMENT = "Queue";
    public static final String QUEUE_MESSAGES_LIST_ELEMENT = "QueueMessagesList";
    public static final String QUEUE_MESSAGE_ELEMENT = "QueueMessage";
    public static final String TIME_NEXT_VISIBLE_ELEMENT = "TimeNextVisible";
}
