.class public Lcom/duoku/platform/view/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static b:I

.field protected static c:Z

.field protected static d:Landroid/widget/ImageView;


# instance fields
.field protected e:Landroid/os/Handler;

.field protected f:J

.field protected g:J

.field protected h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/duoku/platform/view/common/a;->b:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/common/a;->e:Landroid/os/Handler;

    .line 34
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/duoku/platform/view/common/a;->f:J

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/duoku/platform/view/common/a;->g:J

    .line 63
    new-instance v0, Lcom/duoku/platform/view/common/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/common/a$1;-><init>(Lcom/duoku/platform/view/common/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/common/a;->h:Ljava/lang/Runnable;

    .line 40
    sget-object v0, Lcom/duoku/platform/view/common/a;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_20

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/view/common/a;->d:Landroid/widget/ImageView;

    .line 44
    :cond_20
    iget-object v0, p0, Lcom/duoku/platform/view/common/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_2b

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/common/a;->e:Landroid/os/Handler;

    .line 48
    :cond_2b
    return-void
.end method
