.class public Lcom/adobe/air/wand/message/json/JSONMessageManager;
.super Lcom/adobe/air/wand/message/MessageManager;
.source "JSONMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/message/json/JSONMessageManager$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/air/wand/message/MessageManager;-><init>()V

    return-void
.end method

.method private static createJSONMessage(Lcom/adobe/air/wand/message/Message;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/adobe/air/wand/message/json/JSONMessageManager$1;->$SwitchMap$com$adobe$air$wand$message$Message$Type:[I

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported message type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Request$Header;

    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Request$Data;

    const-string v4, "taskID"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Header;->getTaskID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "arguments"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Request$Data;->getArguments()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "title"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "header"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit p0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Response$Header;

    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Response$Data;

    const-string v4, "status"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getStatus()Lcom/adobe/air/wand/message/Response$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "taskID"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getTaskID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Response$Data;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Notification$Header;

    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Notification$Data;

    const-string v4, "notification"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createWandMessage(Lorg/json/JSONObject;)Lcom/adobe/air/wand/message/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "header"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x0

    sget-object v6, Lcom/adobe/air/wand/message/Message$Type;->REQUEST:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v6}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "taskID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Lcom/adobe/air/wand/message/Request$Header;

    invoke-direct {v3, v2, v0, v4, v5}, Lcom/adobe/air/wand/message/Request$Header;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v2, Lcom/adobe/air/wand/message/Request$Data;

    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {v0, v1}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {v2, v0}, Lcom/adobe/air/wand/message/Request$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataArray;)V

    new-instance v0, Lcom/adobe/air/wand/message/Request;

    invoke-direct {v0, v3, v2}, Lcom/adobe/air/wand/message/Request;-><init>(Lcom/adobe/air/wand/message/Request$Header;Lcom/adobe/air/wand/message/Request$Data;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    sget-object v6, Lcom/adobe/air/wand/message/Message$Type;->RESPONSE:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v6}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "taskID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v6, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    :goto_1
    const-string v0, "result"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/wand/message/Response$Header;

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/wand/message/Response$Header;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/air/wand/message/Response$Status;)V

    new-instance v2, Lcom/adobe/air/wand/message/Response$Data;

    new-instance v3, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v3, v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/adobe/air/wand/message/Response$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    new-instance v0, Lcom/adobe/air/wand/message/Response;

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/wand/message/Response;-><init>(Lcom/adobe/air/wand/message/Response$Header;Lcom/adobe/air/wand/message/Response$Data;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v1, Lcom/adobe/air/wand/message/Response$Status;->ERROR:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v6, Lcom/adobe/air/wand/message/Response$Status;->ERROR:Lcom/adobe/air/wand/message/Response$Status;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to fetch Response status"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v1, Lcom/adobe/air/wand/message/Message$Type;->NOTIFICATION:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "notification"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/wand/message/Notification$Header;

    invoke-direct {v1, v2, v4, v5}, Lcom/adobe/air/wand/message/Notification$Header;-><init>(Ljava/lang/String;J)V

    new-instance v2, Lcom/adobe/air/wand/message/Notification$Data;

    new-instance v3, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v3, v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/adobe/air/wand/message/Notification$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    new-instance v0, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/wand/message/Notification;-><init>(Lcom/adobe/air/wand/message/Notification$Header;Lcom/adobe/air/wand/message/Notification$Data;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public createDataArray()Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1

    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>()V

    return-object v0
.end method

.method public createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1

    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    return-object v0
.end method

.method public createWandNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/adobe/air/wand/message/Notification$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/adobe/air/wand/message/Notification$Header;-><init>(Ljava/lang/String;J)V

    if-nez p2, :cond_0

    new-instance p2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {p2}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    :cond_0
    new-instance v1, Lcom/adobe/air/wand/message/Notification$Data;

    invoke-direct {v1, p2}, Lcom/adobe/air/wand/message/Notification$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    new-instance v2, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {v2, v0, v1}, Lcom/adobe/air/wand/message/Notification;-><init>(Lcom/adobe/air/wand/message/Notification$Header;Lcom/adobe/air/wand/message/Notification$Data;)V

    return-object v2
.end method

.method public createWandRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/adobe/air/wand/message/Request$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/adobe/air/wand/message/Request$Header;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {p3}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>()V

    :cond_0
    new-instance v1, Lcom/adobe/air/wand/message/Request$Data;

    invoke-direct {v1, p3}, Lcom/adobe/air/wand/message/Request$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataArray;)V

    new-instance v2, Lcom/adobe/air/wand/message/Request;

    invoke-direct {v2, v0, v1}, Lcom/adobe/air/wand/message/Request;-><init>(Lcom/adobe/air/wand/message/Request$Header;Lcom/adobe/air/wand/message/Request$Data;)V

    return-object v2
.end method

.method public createWandResponse(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;Lcom/adobe/air/wand/message/Response$Status;)Lcom/adobe/air/wand/message/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/adobe/air/wand/message/Response$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/wand/message/Response$Header;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/air/wand/message/Response$Status;)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {p3}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    :cond_0
    new-instance v0, Lcom/adobe/air/wand/message/Response$Data;

    invoke-direct {v0, p3}, Lcom/adobe/air/wand/message/Response$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    new-instance v2, Lcom/adobe/air/wand/message/Response;

    invoke-direct {v2, v1, v0}, Lcom/adobe/air/wand/message/Response;-><init>(Lcom/adobe/air/wand/message/Response$Header;Lcom/adobe/air/wand/message/Response$Data;)V

    return-object v2
.end method

.method public deserializeWandMessage(Ljava/lang/String;)Lcom/adobe/air/wand/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adobe/air/wand/message/json/JSONMessageManager;->createWandMessage(Lorg/json/JSONObject;)Lcom/adobe/air/wand/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public serializeMessage(Lcom/adobe/air/wand/message/Message;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/adobe/air/wand/message/json/JSONMessageManager;->createJSONMessage(Lcom/adobe/air/wand/message/Message;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
