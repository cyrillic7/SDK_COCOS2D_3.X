.class final Lcom/baidu/bdgame/sdk/obf/dn$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dn$a;->a()V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dn$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dn$a;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dn$a$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 89
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dn$a$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_14

    if-eqz p3, :cond_14

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn$a;->a(Lcom/baidu/bdgame/sdk/obf/dn$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$a;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dn$a;->a(Lcom/baidu/bdgame/sdk/obf/dn$a;Lorg/json/JSONObject;)V

    .line 101
    :goto_13
    return-void

    .line 99
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn$a;->b(Lcom/baidu/bdgame/sdk/obf/dn$a;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-interface {v0, v1, v2, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_13
.end method
