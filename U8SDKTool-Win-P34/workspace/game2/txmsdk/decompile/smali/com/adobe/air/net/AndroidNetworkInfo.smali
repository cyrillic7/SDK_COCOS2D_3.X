.class Lcom/adobe/air/net/AndroidNetworkInfo;
.super Ljava/lang/Object;
.source "AndroidNetworkInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidNetworkInfo"

.field private static sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/adobe/air/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    return-void
.end method

.method public static GetAndroidNetworkInfo(Landroid/content/Context;)Lcom/adobe/air/net/AndroidNetworkInfo;
    .locals 1

    sget-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/air/net/AndroidNetworkInfo;

    invoke-direct {v0, p0}, Lcom/adobe/air/net/AndroidNetworkInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    :cond_0
    sget-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    return-object v0
.end method

.method private enumerateNetworkInterfaces()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, v0}, Lcom/adobe/air/net/AndroidNetworkInfo;->getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/adobe/air/net/AndroidNetworkInfo;->getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public GetNetworkInterface(I)Lcom/adobe/air/net/NetworkInterface;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/net/NetworkInterface;

    goto :goto_0
.end method

.method public GetNetworkInterfacesCount()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-direct {p0}, Lcom/adobe/air/net/AndroidNetworkInfo;->enumerateNetworkInterfaces()V

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public InterfacesReadComplete()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lcom/adobe/air/net/InterfaceAddress;

    invoke-direct {v2}, Lcom/adobe/air/net/InterfaceAddress;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v0, v3, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    iget v0, v3, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, v2, Lcom/adobe/air/net/InterfaceAddress;->prefixLength:I

    iget v0, v3, Landroid/net/DhcpInfo;->ipAddress:I

    iget v1, v3, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/air/net/InterfaceAddress;->broadcast:Ljava/lang/String;

    const-string v0, "IPv4"

    iput-object v0, v2, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    const-string v0, "IPv4"

    iput-object v0, v2, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 2

    new-instance v0, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v0}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adobe/air/net/NetworkInterface;->active:Z

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 3

    new-instance v1, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v1}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/adobe/air/net/NetworkInterface;->active:Z

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iput-object v0, v1, Lcom/adobe/air/net/NetworkInterface;->hardwareAddress:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/adobe/air/net/AndroidNetworkInfo;->getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/air/net/NetworkInterface;->addAddress(Lcom/adobe/air/net/InterfaceAddress;)V

    return-object v1
.end method
