.class public Lcom/duoku/platform/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/duoku/platform/util/o;


# instance fields
.field private final b:I

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/duoku/platform/util/o;->b:I

    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/util/o;
    .registers 3

    .prologue
    .line 95
    sget-object v0, Lcom/duoku/platform/util/o;->a:Lcom/duoku/platform/util/o;

    if-nez v0, :cond_d

    .line 97
    new-instance v0, Lcom/duoku/platform/util/o;

    const-string v1, "com_dk_shared_preferences"

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/duoku/platform/util/o;->a:Lcom/duoku/platform/util/o;

    .line 100
    :cond_d
    sget-object v0, Lcom/duoku/platform/util/o;->a:Lcom/duoku/platform/util/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)Z
    .registers 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/duoku/platform/util/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
