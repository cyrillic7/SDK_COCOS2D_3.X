.class final Lcom/baidu/bdgame/sdk/obf/cu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cu;->j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/cu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cu;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 239
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$4;->b:Lcom/baidu/bdgame/sdk/obf/cu;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cu$4;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 254
    :try_start_6
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 255
    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    .line 261
    :goto_18
    return-void

    .line 257
    :catch_19
    move-exception v0

    .line 260
    :cond_1a
    const/4 v0, -0x2

    const-string v1, "AnnounceTimeInterval: format error"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_18
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 239
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$4;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$4;->a:Lcom/baidu/bdgame/sdk/obf/n;

    if-nez v0, :cond_5

    .line 248
    :goto_4
    return-void

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$4;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0, p3, v0}, Lcom/baidu/bdgame/sdk/obf/cu$4;->a(Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_4
.end method
