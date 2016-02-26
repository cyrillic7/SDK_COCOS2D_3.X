.class public final Lcom/baidu/wallet/base/datamodel/AccountManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/baidu/wallet/core/NoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/datamodel/AccountManager$User;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/wallet/base/datamodel/AccountManager;

.field private static c:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/android/pay/SafePay;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    const-string v0, "account"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0, p2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token_value"

    iget-object v2, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    invoke-virtual {v2, p1}, Lcom/baidu/android/pay/SafePay;->localEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;
    .registers 5

    const-class v1, Lcom/baidu/wallet/base/datamodel/AccountManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;

    if-nez v0, :cond_13

    new-instance v0, Lcom/baidu/wallet/base/datamodel/AccountManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/baidu/wallet/base/datamodel/AccountManager;-><init>(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    sput-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;

    :cond_13
    sget-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;
    .registers 5

    const-class v1, Lcom/baidu/wallet/base/datamodel/AccountManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/wallet/base/datamodel/AccountManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;-><init>(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    sput-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    sget-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->a:Lcom/baidu/wallet/base/datamodel/AccountManager;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getBfbToken()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->d:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->d:Ljava/lang/String;

    goto :goto_d
.end method

.method public getLoginType()I
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "login_type"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTokenType()I
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "token_type"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTokenValue()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v2, "token_value"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->localDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLogin()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v2, "login_type"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    if-ne v2, v0, :cond_24

    sget-object v2, Lcom/baidu/wallet/base/datamodel/AccountManager;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/baidu/wallet/base/datamodel/AccountManager;->c:Ljava/lang/String;

    sget-object v2, Lcom/baidu/wallet/base/datamodel/AccountManager;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23
.end method

.method public logout()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token_value"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v0, "login_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v2, "token_value"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->localDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/base/datamodel/AccountManager;->c:Ljava/lang/String;

    :cond_20
    const-string v0, "token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "token"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->d:Ljava/lang/String;

    goto :goto_7
.end method

.method public saveBduss(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token_value"

    iget-object v2, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    invoke-virtual {v2, p1}, Lcom/baidu/android/pay/SafePay;->localEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBdussOrToken(ILjava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->saveBduss(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public setBfbToken(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V
    .registers 6

    const/4 v1, 0x1

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p1, :cond_67

    iget v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->f:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_19

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_19
    invoke-virtual {p0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenType()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->f:I

    invoke-virtual {p0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    :cond_25
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget v0, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->userType:I

    iget v3, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->f:I

    if-ne v0, v3, :cond_6b

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->tokenValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    :goto_3e
    const-string v3, "login_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_67

    iget v0, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->userType:I

    iput v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->f:I

    iget-object v0, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->tokenValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->g:Ljava/lang/String;

    const-string v0, "token_type"

    iget v1, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->userType:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "token_value"

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/AccountManager;->e:Lcom/baidu/android/pay/SafePay;

    iget-object v3, p1, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->tokenValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/android/pay/SafePay;->localEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "token"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_6b
    move v0, v1

    goto :goto_3e
.end method
