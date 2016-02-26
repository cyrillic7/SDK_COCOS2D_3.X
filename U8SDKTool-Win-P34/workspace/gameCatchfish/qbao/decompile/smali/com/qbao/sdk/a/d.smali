.class public Lcom/qbao/sdk/a/d;
.super Ljava/lang/Object;
.source "QbaoPayBase.java"


# static fields
.field protected static dc:Landroid/os/Handler;

.field protected static dd:Landroid/content/Context;


# instance fields
.field protected de:Landroid/app/Activity;

.field protected df:Lcom/qbao/sdk/service/NetworkChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/qbao/sdk/a/d;->de:Landroid/app/Activity;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/qbao/sdk/a/d;->dd:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object p1, Lcom/qbao/sdk/a/d;->dd:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .registers 1

    .prologue
    .line 46
    sput-object p0, Lcom/qbao/sdk/a/d;->dc:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static ae()Landroid/content/Context;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/qbao/sdk/a/d;->dd:Landroid/content/Context;

    return-object v0
.end method

.method public static af()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/qbao/sdk/a/d;->dc:Landroid/os/Handler;

    return-object v0
.end method

.method public static p(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/qbao/sdk/a/d;->dd:Landroid/content/Context;

    .line 39
    return-void
.end method
