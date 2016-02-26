.class Lcom/baidu/bdgame/sdk/obf/ml$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ml;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml$c;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V
    .registers 3

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml$c;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 182
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml$c;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Result: service time out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$c;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ml;->a(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$c;)Lcom/baidu/bdgame/sdk/obf/ml$c;

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$c;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->c(Lcom/baidu/bdgame/sdk/obf/ml;)V

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$c;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->d(Lcom/baidu/bdgame/sdk/obf/ml;)V

    .line 187
    return-void
.end method
