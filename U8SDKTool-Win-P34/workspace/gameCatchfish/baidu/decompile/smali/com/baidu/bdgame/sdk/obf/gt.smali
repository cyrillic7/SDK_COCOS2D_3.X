.class public Lcom/baidu/bdgame/sdk/obf/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->d:J

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->e:J

    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->c:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->d:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->e:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Announcement [id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->c:Ljava/lang/String;

    if-nez v0, :cond_38

    const-string v0, ""

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gt;->c:Ljava/lang/String;

    goto :goto_29
.end method
