.class Lcom/duoku/platform/floatview/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/floatview/a;)V
    .registers 2

    .prologue
    .line 617
    iput-object p1, p0, Lcom/duoku/platform/floatview/a$a;->a:Lcom/duoku/platform/floatview/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/floatview/a;Lcom/duoku/platform/floatview/a$a;)V
    .registers 3

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/duoku/platform/floatview/a$a;-><init>(Lcom/duoku/platform/floatview/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 623
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 624
    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    if-eq v1, v0, :cond_10

    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 626
    :cond_10
    const-string v0, "unreadCount"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 627
    if-ltz v0, :cond_1e

    .line 629
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$a;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/floatview/a;->a(I)V

    .line 641
    :cond_1e
    :goto_1e
    return-void

    .line 632
    :cond_1f
    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    if-eq v1, v0, :cond_2b

    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 634
    :cond_2b
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$a;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/a;->a()V

    goto :goto_1e

    .line 636
    :cond_31
    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    if-eq v1, v0, :cond_3d

    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 638
    :cond_3d
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$a;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/a;->c()V

    goto :goto_1e
.end method
