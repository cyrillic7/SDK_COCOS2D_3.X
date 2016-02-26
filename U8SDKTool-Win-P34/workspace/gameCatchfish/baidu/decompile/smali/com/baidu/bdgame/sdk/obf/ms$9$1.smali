.class final Lcom/baidu/bdgame/sdk/obf/ms$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ms$9;->onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms$9;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ms$9;)V
    .registers 2

    .prologue
    .line 498
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms$9$1;->a:Lcom/baidu/bdgame/sdk/obf/ms$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 506
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9$1;->a:Lcom/baidu/bdgame/sdk/obf/ms$9;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method
