.class public Lcom/adobe/air/wand/connection/WandWebSocket;
.super Ljava/lang/Object;
.source "WandWebSocket.java"

# interfaces
.implements Lcom/adobe/air/wand/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/connection/WandWebSocket$1;,
        Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;,
        Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;,
        Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    }
.end annotation


# static fields
.field private static final CONNECT_PING_URL:Ljava/lang/String; = "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

.field private static final LOG_TAG:Ljava/lang/String; = "WandWebSocket"

.field private static final WEBSOCKET_PROTOCOL:Ljava/lang/String; = "WEBSOCKET"


# instance fields
.field private final HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

.field private final OPEN_SYNCHRONIZER:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIncomingConnection:Z

.field private mConnection:Lorg/java_websocket/WebSocket;

.field private mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

.field private mConnectionToken:Ljava/lang/String;

.field private mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

.field private mHandshakeTimer:Ljava/util/Timer;

.field private mIsDisposed:Z

.field private mLocalID:Ljava/lang/String;

.field private mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OPEN_SYNCHRONIZER"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->OPEN_SYNCHRONIZER:Ljava/lang/String;

    const-string v0, "HANDSHAKE_SYNCHRONIZER"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iput-boolean v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    iput-boolean v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V

    return-void
.end method

.method private constructLocalID()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x100

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0x10000

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v4, 0x1000000

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceCloseConnection()V
    .locals 6

    const/16 v5, 0x3e9

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const-string v3, "AIR Gamepad has closed"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    const-string v1, "AIR Gamepad has closed"

    invoke-interface {v0, v5, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    return-void
.end method

.method private getLocalIpAddress()Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiHotspotIpAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredPort()I
    .locals 1

    const/16 v0, 0x4d2

    return v0
.end method

.method private getUnsignedByte(B)I
    .locals 0

    if-ltz p1, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit16 p1, p1, 0x100

    goto :goto_0
.end method

.method private getWiFiHotspotIpAddress()Ljava/net/InetAddress;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v11, 0x10

    const/4 v12, 0x6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move-object v1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v6, v4

    move v3, v4

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v1, v7, v6

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isWifiApEnabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_2
    move v3, v1

    :cond_2
    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    move-object v1, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-array v6, v12, [B

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_6

    move v0, v4

    :goto_4
    array-length v3, v6

    if-ge v0, v3, :cond_7

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v0, v4

    :goto_5
    array-length v3, v6

    if-ge v0, v3, :cond_7

    array-length v3, v1

    if-ge v0, v3, :cond_7

    aget-object v3, v1, v0

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    :cond_9
    :goto_6
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    if-eqz v9, :cond_9

    array-length v3, v9

    if-ne v3, v12, :cond_9

    move v3, v4

    :goto_7
    array-length v10, v9

    if-ge v3, v10, :cond_c

    aget-byte v10, v9, v3

    aget-byte v11, v6, v3

    if-eq v10, v11, :cond_a

    move v3, v4

    :goto_8
    if-eqz v3, :cond_9

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    move-object v1, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_c
    move v3, v2

    goto :goto_8

    :cond_d
    move v1, v3

    goto/16 :goto_2
.end method

.method private getWiFiIpAddress()Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private pingServerOnConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;

    invoke-direct {v0, p0, v2}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;

    invoke-direct {v0, p0, v2}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt?publisher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&applicationURL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startSocketServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getPreferredPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->start()V

    :cond_0
    return-void
.end method

.method private stopSocketServer()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Handshake is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+\\.\\d+\\.\\d+"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "1.1.0"

    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v1, "WEBSOCKET"

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getDestinationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid destinationID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v1, "1.1.0"

    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getPublisher()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid publisher"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getApplicationURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid applicationURL"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid applicationURL"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is already established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getConnectionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection$Listener;->updateConnectionToken(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectSuccess()V

    :cond_4
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->stopSocketServer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onDisconnectSuccess()V

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->unregisterListener()V

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const/16 v1, 0x3e9

    const-string v2, "AIR Gamepad has closed"

    invoke-interface {v0, v1, v2}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    :cond_2
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_3
    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iput-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getConnectionToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public onConnectionChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReadyForConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid state at onReadyForConnection callback."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getSuccessResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mPublisher:Ljava/lang/String;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->access$1000(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mApplicationURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->access$1100(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->pingServerOnConnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Connection.Listener"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "A listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    invoke-interface {v0, p1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to send Message"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-void
.end method
