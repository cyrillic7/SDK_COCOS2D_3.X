.class Lcom/baidu/bdgame/sdk/obf/mf$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 150
    move-wide v2, v4

    .line 151
    :goto_3
    cmp-long v0, v2, p1

    if-gez v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mf$a;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 153
    cmp-long v6, v0, v4

    if-nez v6, :cond_1c

    .line 154
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mf$a;->read()I

    move-result v0

    .line 155
    if-gez v0, :cond_1a

    .line 163
    :cond_19
    return-wide v2

    .line 158
    :cond_1a
    const-wide/16 v0, 0x1

    .line 161
    :cond_1c
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 162
    goto :goto_3
.end method
