.class Lcom/qbao/sdk/a/e$5;
.super Ljava/lang/Object;
.source "QbaoPayMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/e;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dr:Landroid/content/Context;

.field private final synthetic ds:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/e$5;->dr:Landroid/content/Context;

    iput-object p2, p0, Lcom/qbao/sdk/a/e$5;->ds:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 342
    new-instance v0, Lcom/qbao/sdk/ui/ExitView;

    iget-object v1, p0, Lcom/qbao/sdk/a/e$5;->dr:Landroid/content/Context;

    iget-object v2, p0, Lcom/qbao/sdk/a/e$5;->ds:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;

    invoke-direct {v0, v1, v2}, Lcom/qbao/sdk/ui/ExitView;-><init>(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 343
    iget-object v1, p0, Lcom/qbao/sdk/a/e$5;->dr:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/qbao/sdk/ui/a;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 344
    return-void
.end method
