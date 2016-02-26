.class Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
.super Ljava/lang/Object;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handshake"
.end annotation


# static fields
.field private static final APPLICATION_URL:Ljava/lang/String; = "applicationURL"

.field private static final DESTINATION_ID:Ljava/lang/String; = "destinationID"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final PUBLISHER:Ljava/lang/String; = "publisher"

.field private static final SOURCE_ID:Ljava/lang/String; = "sourceID"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final TIMEOUT_MILLISECONDS:I = 0x7530

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mApplicationURL:Ljava/lang/String;

.field private mDestinationID:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mPublisher:Ljava/lang/String;

.field private mSourceID:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WEBSOCKET"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    invoke-direct {v1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;-><init>()V

    const-string v2, "protocol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    const-string v2, "sourceID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    const-string v2, "destinationID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    const-string v2, "publisher"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "publisher"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;

    :cond_0
    const-string v2, "applicationURL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "applicationURL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getApplicationURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "protocol"

    const-string v2, "WEBSOCKET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sourceID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "destinationID"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    const-string v2, "1.1.0"

    invoke-static {v1, v2}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "publisher"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationURL"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    return-object v0
.end method