.class final Lcom/baidu/bdgame/sdk/obf/mj$16$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mj$16;->onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mj$16;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mj$16;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$2;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 352
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$2;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->a(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method
