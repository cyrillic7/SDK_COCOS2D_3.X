.class public Lcom/duoku/platform/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/g/b;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_3
    invoke-direct {p0}, Lcom/duoku/platform/g/b;->i()V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_6} :catch_7

    .line 56
    :goto_6
    return-void

    .line 52
    :catch_7
    move-exception v0

    .line 53
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->a()V

    goto :goto_6
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 185
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 186
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1f

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 190
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static c()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    .line 200
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1f

    .line 203
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1f

    move v0, v1

    .line 206
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private h()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 60
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/g/b;->a:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 61
    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "apn"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "proxy"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "port"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_7b

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 67
    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 68
    const-string v2, "proxy"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    const-string v3, "port"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 70
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 72
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_94

    .line 75
    const-string v1, "10.0.0.172"

    iget-object v2, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 77
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 78
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    .line 109
    :cond_78
    :goto_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_7b
    return-void

    .line 80
    :cond_7c
    const-string v1, "10.0.0.200"

    iget-object v2, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 82
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 83
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 86
    :cond_91
    iput-boolean v7, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_78

    .line 89
    :cond_94
    iget-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 91
    iget-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "CMWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "UNIWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "3GWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 94
    :cond_b6
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 95
    const-string v1, "10.0.0.172"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 96
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 98
    :cond_c1
    const-string v2, "CTWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 100
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 101
    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 102
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 106
    :cond_d4
    iput-boolean v7, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_78
.end method

.method private i()V
    .registers 3

    .prologue
    .line 174
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2d

    .line 177
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 181
    :cond_2d
    :goto_2d
    return-void

    .line 180
    :cond_2e
    invoke-direct {p0}, Lcom/duoku/platform/g/b;->h()V

    goto :goto_2d
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    .line 119
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    if-eqz v0, :cond_28

    .line 123
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_28

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 131
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 170
    :cond_28
    :goto_28
    return-void

    .line 133
    :cond_29
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 135
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_7c

    .line 139
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_79

    .line 141
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 143
    :cond_58
    iput-boolean v4, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 144
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 145
    const-string v0, "80"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_28

    .line 147
    :cond_63
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 149
    iput-boolean v4, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 150
    const-string v0, "10.0.0.200"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 151
    const-string v0, "80"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_28

    .line 155
    :cond_76
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28

    .line 161
    :cond_79
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28

    .line 164
    :cond_7c
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/duoku/platform/g/b;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    invoke-static {}, Lcom/duoku/platform/g/b;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    const-string v0, "3"

    .line 312
    :goto_8
    return-object v0

    .line 306
    :cond_9
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->a()V

    .line 308
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 309
    const-string v0, "2"

    goto :goto_8

    .line 312
    :cond_15
    const-string v0, "1"

    goto :goto_8
.end method
