.class final Lcom/baidu/bdgame/sdk/obf/jj$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jj$a;->handleMessage(Landroid/os/Message;)V
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
        "Lcom/baidu/bdgame/sdk/obf/ho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jj$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jj$a;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jj$a;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jj$a;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V

    .line 217
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 211
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ho;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jj$a$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V

    return-void
.end method
