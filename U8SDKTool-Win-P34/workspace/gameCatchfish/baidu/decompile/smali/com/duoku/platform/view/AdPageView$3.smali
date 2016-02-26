.class Lcom/duoku/platform/view/AdPageView$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/AdPageView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/AdPageView;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/AdPageView;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/AdPageView$3;->a:Lcom/duoku/platform/view/AdPageView;

    iput-object p2, p0, Lcom/duoku/platform/view/AdPageView$3;->b:Landroid/os/Handler;

    .line 142
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/AdPageView$3;)Lcom/duoku/platform/view/AdPageView;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$3;->a:Lcom/duoku/platform/view/AdPageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$3;->b:Landroid/os/Handler;

    new-instance v1, Lcom/duoku/platform/view/AdPageView$3$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/AdPageView$3$1;-><init>(Lcom/duoku/platform/view/AdPageView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
