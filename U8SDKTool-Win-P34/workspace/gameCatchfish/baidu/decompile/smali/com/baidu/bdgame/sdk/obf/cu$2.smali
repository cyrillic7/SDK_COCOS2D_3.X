.class final Lcom/baidu/bdgame/sdk/obf/cu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cu;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 137
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$2;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    .line 142
    if-nez p1, :cond_2e

    if-eqz p3, :cond_2e

    .line 143
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/gu;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2e

    .line 145
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->a:Landroid/content/Context;

    const-string v2, "bdp_announcement"

    invoke-static {v1, p3, v2}, Lcom/baidu/bdgame/sdk/obf/hz;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->a:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;J)V

    .line 148
    :cond_1d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/baidu/bdgame/sdk/obf/gu;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 154
    :goto_2d
    return-void

    .line 153
    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$2;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_2d
.end method
