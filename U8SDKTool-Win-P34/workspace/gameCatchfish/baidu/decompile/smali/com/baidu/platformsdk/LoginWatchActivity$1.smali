.class final Lcom/baidu/platformsdk/LoginWatchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/LoginWatchActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/LoginWatchActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/LoginWatchActivity;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginWatchActivity$1;->a:Lcom/baidu/platformsdk/LoginWatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 66
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platformsdk/LoginWatchActivity$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 5

    .prologue
    .line 70
    sparse-switch p1, :sswitch_data_10

    .line 79
    :goto_3
    return-void

    .line 72
    :sswitch_4
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity$1;->a:Lcom/baidu/platformsdk/LoginWatchActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a(Lcom/baidu/platformsdk/LoginWatchActivity;)V

    goto :goto_3

    .line 75
    :sswitch_a
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity$1;->a:Lcom/baidu/platformsdk/LoginWatchActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginWatchActivity;->b(Lcom/baidu/platformsdk/LoginWatchActivity;)V

    goto :goto_3

    .line 70
    :sswitch_data_10
    .sparse-switch
        -0x3eb -> :sswitch_a
        0x0 -> :sswitch_4
    .end sparse-switch
.end method
