.class public Lcom/u8/sdk/U8Order;
.super Ljava/lang/Object;
.source "U8Order.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private order:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    iput-object p2, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    iput-object p3, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    iput-object p4, p0, Lcom/u8/sdk/U8Order;->productDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->productDesc:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    return-void
.end method
