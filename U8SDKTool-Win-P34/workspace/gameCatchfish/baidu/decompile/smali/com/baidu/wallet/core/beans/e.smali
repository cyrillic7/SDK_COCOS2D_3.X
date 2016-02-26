.class public Lcom/baidu/wallet/core/beans/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/wallet/core/beans/e;->a:I

    iput p2, p0, Lcom/baidu/wallet/core/beans/e;->b:I

    iput-object p3, p0, Lcom/baidu/wallet/core/beans/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/wallet/core/beans/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/beans/e;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/beans/e;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/e;->d:Ljava/lang/Object;

    return-object v0
.end method
