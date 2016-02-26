.class public abstract Lcom/qbao/core/c/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field protected static final STATUS_FAILURE:I = -0x1

.field protected static final STATUS_SUCCESS:I = 0x0

.field protected static TAG:Ljava/lang/String; = null

.field protected static final r:I = -0x2

.field private static final s:I = 0x2

.field private static final t:J = 0x7530L


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lorg/apache/http/HttpResponse;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Lcom/qbao/core/c/f;

.field protected J:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected u:Lcom/qbao/core/c/c;

.field protected v:Lcom/qbao/core/c/f;

.field private w:Lorg/apache/http/client/methods/HttpUriRequest;

.field private x:[B

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "Request"

    sput-object v0, Lcom/qbao/core/c/a;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    .line 75
    iput-object v1, p0, Lcom/qbao/core/c/a;->A:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/qbao/core/c/a;->B:Ljava/lang/String;

    .line 135
    const-string v0, "Signature-RSAUtils"

    iput-object v0, p0, Lcom/qbao/core/c/a;->D:Ljava/lang/String;

    .line 139
    const-string v0, "Signature-Secret"

    iput-object v0, p0, Lcom/qbao/core/c/a;->E:Ljava/lang/String;

    .line 143
    const-string v0, "GET"

    iput-object v0, p0, Lcom/qbao/core/c/a;->F:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/c/a;->G:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/c/a;->J:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/qbao/core/c/a;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    .line 75
    iput-object v1, p0, Lcom/qbao/core/c/a;->A:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/qbao/core/c/a;->B:Ljava/lang/String;

    .line 135
    const-string v0, "Signature-RSAUtils"

    iput-object v0, p0, Lcom/qbao/core/c/a;->D:Ljava/lang/String;

    .line 139
    const-string v0, "Signature-Secret"

    iput-object v0, p0, Lcom/qbao/core/c/a;->E:Ljava/lang/String;

    .line 143
    const-string v0, "GET"

    iput-object v0, p0, Lcom/qbao/core/c/a;->F:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/c/a;->G:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/c/a;->J:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/qbao/core/c/a;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    .line 104
    iput-object p3, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    .line 105
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .registers 6

    .prologue
    .line 252
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 254
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static synthetic a(Lcom/qbao/core/c/a;I)V
    .registers 2

    .prologue
    .line 72
    iput p1, p0, Lcom/qbao/core/c/a;->z:I

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/c/a;Lorg/apache/http/HttpResponse;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/qbao/core/c/a;->C:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/c/a;[B)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qbao/core/c/a;->x:[B

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/c/a;)[B
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qbao/core/c/a;->x:[B

    return-object v0
.end method

.method private final f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/c/a;->x:[B

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/qbao/core/c/a;->z:I

    .line 266
    return-void
.end method


# virtual methods
.method public abstract a(I[B[Lorg/apache/http/Header;)V
.end method

.method public final a(Lcom/qbao/core/c/g;)V
    .registers 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    if-nez v0, :cond_b

    .line 180
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    .line 182
    :cond_b
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 183
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->j()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/qbao/core/c/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_1b
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    invoke-virtual {p1, v1, v0, v2}, Lcom/qbao/core/c/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/c/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/c/a;->A:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/qbao/core/c/g;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/c/a;->B:Ljava/lang/String;

    .line 187
    :cond_2d
    return-void

    .line 183
    :cond_2e
    const-string v0, "POST"

    goto :goto_1b
.end method

.method public e()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/qbao/core/c/a;->H:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    if-nez v0, :cond_1c

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    :cond_10
    invoke-direct {p0, p1}, Lcom/qbao/core/c/a;->f(Ljava/lang/String;)V

    .line 343
    iget v0, p0, Lcom/qbao/core/c/a;->z:I

    iget-object v1, p0, Lcom/qbao/core/c/a;->x:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/core/c/a;->a(I[B[Lorg/apache/http/Header;)V

    .line 344
    iput-object v2, p0, Lcom/qbao/core/c/a;->C:Lorg/apache/http/HttpResponse;

    .line 346
    :cond_1c
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const-string v0, "Header-Key"

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/qbao/core/c/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/qbao/core/c/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qbao/core/c/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/qbao/core/c/a;->G:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/qbao/core/c/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/qbao/core/c/f;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/qbao/core/c/a;->I:Lcom/qbao/core/c/f;

    return-object v0
.end method

.method public r()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/qbao/core/c/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public signature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "Header-Signature"

    return-object v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public timeout()J
    .registers 3

    .prologue
    .line 111
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method protected v()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 6

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/qbao/core/c/f;

    invoke-direct {v1}, Lcom/qbao/core/c/f;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    invoke-virtual {v2}, Lcom/qbao/core/c/f;->B()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 200
    iget-object v2, v1, Lcom/qbao/core/c/f;->aa:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qbao/core/c/a;->v:Lcom/qbao/core/c/f;

    invoke-virtual {v3}, Lcom/qbao/core/c/f;->B()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_20
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->q()Lcom/qbao/core/c/f;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 205
    iget-object v2, v1, Lcom/qbao/core/c/f;->aa:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/qbao/core/c/a;->q()Lcom/qbao/core/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qbao/core/c/f;->B()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_33
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 210
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->s()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1}, Lcom/qbao/core/c/f;->D()Ljava/lang/String;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_64

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "&"

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_64
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 238
    :goto_6a
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->r()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 239
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 243
    :cond_82
    return-object v2

    .line 213
    :cond_83
    const-string v0, "?"

    goto :goto_58

    .line 218
    :cond_86
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/qbao/core/c/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 220
    :try_start_8f
    const-string v2, "UTF-8"

    .line 221
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->p()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 223
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v3, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "text/xml; charset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_b5
    move-object v2, v0

    .line 234
    goto :goto_6a

    .line 227
    :cond_b7
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {v1}, Lcom/qbao/core/c/f;->B()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "application/x-www-form-urlencoded; charset="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_d5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8f .. :try_end_d5} :catch_d6

    goto :goto_b5

    .line 231
    :catch_d6
    move-exception v1

    .line 232
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_b5

    .line 239
    :cond_dd
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c
.end method

.method public final w()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->e()I

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->v()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 274
    iput-object v2, p0, Lcom/qbao/core/c/a;->x:[B

    .line 275
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/qbao/core/c/a;->x:[B

    if-nez v1, :cond_13

    if-gtz v0, :cond_1d

    .line 310
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/qbao/core/c/a;->x:[B

    if-nez v0, :cond_1c

    .line 311
    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {p0, v0}, Lcom/qbao/core/c/a;->f(Ljava/lang/String;)V

    .line 313
    :cond_1c
    return-void

    .line 277
    :cond_1d
    :try_start_1d
    sget-object v1, Lcom/qbao/core/c/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", proxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qbao/core/c/a;->u()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/qbao/core/c/a;->u()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 279
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    invoke-virtual {v2}, Lcom/qbao/core/c/c;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 284
    :goto_65
    iget-object v1, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1}, Lcom/qbao/core/c/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    iget-object v3, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v4, Lcom/qbao/core/c/a$1;

    invoke-direct {v4, p0}, Lcom/qbao/core/c/a$1;-><init>(Lcom/qbao/core/c/a;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/qbao/core/c/c;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7a} :catch_7b

    goto :goto_d

    .line 302
    :catch_7b
    move-exception v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_d

    .line 305
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    :goto_8f
    invoke-direct {p0, v0}, Lcom/qbao/core/c/a;->f(Ljava/lang/String;)V

    goto :goto_13

    .line 282
    :cond_93
    :try_start_93
    iget-object v1, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    invoke-virtual {v1}, Lcom/qbao/core/c/c;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9e} :catch_7b

    goto :goto_65

    .line 305
    :cond_9f
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_8f
.end method

.method public final x()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    if-nez v0, :cond_1b

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qbao/core/c/a;->y:Z

    .line 329
    iget-object v0, p0, Lcom/qbao/core/c/a;->C:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/qbao/core/c/a;->C:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 330
    :goto_12
    iget v2, p0, Lcom/qbao/core/c/a;->z:I

    iget-object v3, p0, Lcom/qbao/core/c/a;->x:[B

    invoke-virtual {p0, v2, v3, v0}, Lcom/qbao/core/c/a;->a(I[B[Lorg/apache/http/Header;)V

    .line 331
    iput-object v1, p0, Lcom/qbao/core/c/a;->C:Lorg/apache/http/HttpResponse;

    .line 333
    :cond_1b
    return-void

    :cond_1c
    move-object v0, v1

    .line 329
    goto :goto_12
.end method

.method public y()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    if-nez v0, :cond_a

    .line 353
    const-string v0, "No HTTP Client"

    invoke-virtual {p0, v0}, Lcom/qbao/core/c/a;->g(Ljava/lang/String;)V

    .line 361
    :goto_9
    return-void

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/qbao/core/c/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qbao/core/b/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 357
    const-string v0, "\u627e\u4e0d\u5230\u53ef\u7528\u7f51\u7edc\uff0c\u8bf7\u8bbe\u7f6e\u7f51\u7edc\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {p0, v0}, Lcom/qbao/core/c/a;->g(Ljava/lang/String;)V

    goto :goto_9

    .line 360
    :cond_18
    iget-object v0, p0, Lcom/qbao/core/c/a;->u:Lcom/qbao/core/c/c;

    invoke-virtual {v0, p0}, Lcom/qbao/core/c/c;->b(Lcom/qbao/core/c/a;)V

    goto :goto_9
.end method

.method public z()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qbao/core/c/a;->w:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 369
    if-eqz v0, :cond_a

    .line 371
    :try_start_7
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_a} :catch_16

    .line 376
    :cond_a
    :goto_a
    const-string v0, "\u8bf7\u6c42\u8d85\u65f6\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/c/a;->x:[B

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/qbao/core/c/a;->z:I

    .line 378
    return-void

    .line 372
    :catch_16
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_a
.end method
