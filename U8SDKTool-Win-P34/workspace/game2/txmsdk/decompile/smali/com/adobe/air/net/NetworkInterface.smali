.class public Lcom/adobe/air/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# instance fields
.field public active:Z

.field private addresses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/adobe/air/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public hardwareAddress:Ljava/lang/String;

.field public mtu:I

.field public name:Ljava/lang/String;

.field public parent:Lcom/adobe/air/net/NetworkInterface;

.field public subInterfaces:Lcom/adobe/air/net/NetworkInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/net/NetworkInterface;->active:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->hardwareAddress:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/net/NetworkInterface;->mtu:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/air/net/NetworkInterface;->parent:Lcom/adobe/air/net/NetworkInterface;

    iput-object v1, p0, Lcom/adobe/air/net/NetworkInterface;->subInterfaces:Lcom/adobe/air/net/NetworkInterface;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->addresses:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public GetAddress(I)Lcom/adobe/air/net/InterfaceAddress;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->addresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/net/InterfaceAddress;

    return-object v0
.end method

.method public GetAddressesCount()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->addresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public addAddress(Lcom/adobe/air/net/InterfaceAddress;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/net/NetworkInterface;->addresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
