.class final Lcom/baidu/bdgame/sdk/obf/iq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/iq;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/iq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/iq;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iq$3;->a:Lcom/baidu/bdgame/sdk/obf/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq$3;->a:Lcom/baidu/bdgame/sdk/obf/iq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Lcom/baidu/bdgame/sdk/obf/iq;)Lcom/baidu/bdgame/sdk/obf/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->n()V

    .line 205
    return-void
.end method
