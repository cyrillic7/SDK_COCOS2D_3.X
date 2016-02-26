.class final Lcom/baidu/bdgame/sdk/obf/fi$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fi;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->d(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/content/BroadcastReceiver;)V

    .line 172
    const-string v0, "RESULT_STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string v0, "RESULT_STATUS_DES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    if-nez v0, :cond_26

    const-string v0, ""

    :goto_22
    invoke-static {v3, v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 174
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method
