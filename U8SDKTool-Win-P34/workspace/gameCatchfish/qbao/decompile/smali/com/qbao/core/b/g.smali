.class public final Lcom/qbao/core/b/g;
.super Ljava/lang/Object;
.source "TelephonyMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/b/g$a;,
        Lcom/qbao/core/b/g$b;,
        Lcom/qbao/core/b/g$c;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 109
    invoke-static {p0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v1

    .line 111
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 112
    if-nez p1, :cond_24

    .line 113
    const-string v0, "Philips T939"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 114
    const-string v0, "iphonesubinfo0"

    .line 130
    :goto_14
    if-eqz v1, :cond_d4

    .line 132
    :try_start_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3b

    .line 133
    invoke-static {p0, p1}, Lcom/qbao/core/b/b;->a(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1f} :catch_d0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_1f} :catch_da
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1f} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1f} :catch_e4
    .catch Lcom/qbao/core/b/f; {:try_start_16 .. :try_end_1f} :catch_e9

    move-result-object v0

    .line 166
    :cond_20
    :goto_20
    return-object v0

    .line 116
    :cond_21
    const-string v0, "iphonesubinfo"

    goto :goto_14

    .line 118
    :cond_24
    if-ne p1, v6, :cond_36

    .line 119
    if-eqz v1, :cond_20

    .line 122
    const-string v0, "Philips T939"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 123
    const-string v0, "iphonesubinfo1"

    goto :goto_14

    .line 125
    :cond_33
    const-string v0, "iphonesubinfo2"

    goto :goto_14

    .line 128
    :cond_36
    invoke-static {p0}, Lcom/qbao/core/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 134
    :cond_3b
    :try_start_3b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_46

    .line 136
    invoke-static {p0, p1}, Lcom/qbao/core/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 138
    :cond_46
    invoke-static {}, Lcom/qbao/core/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 139
    invoke-static {p1}, Lcom/qbao/core/b/a;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 140
    :cond_51
    invoke-static {}, Lcom/qbao/core/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 141
    invoke-static {p1}, Lcom/qbao/core/b/d;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 142
    :cond_5c
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-nez v0, :cond_90

    if-ne p1, v6, :cond_90

    .line 146
    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "iphonesubinfo1"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_8f} :catch_d0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_8f} :catch_da
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_8f} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_8f} :catch_e4
    .catch Lcom/qbao/core/b/f; {:try_start_3b .. :try_end_8f} :catch_e9

    move-result-object v0

    .line 147
    :cond_90
    if-nez v0, :cond_95

    .line 148
    const-string v0, "0"

    goto :goto_20

    .line 150
    :cond_95
    :try_start_95
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubscriberId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_ce} :catch_d0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_95 .. :try_end_ce} :catch_da
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_95 .. :try_end_ce} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_95 .. :try_end_ce} :catch_e4
    .catch Lcom/qbao/core/b/f; {:try_start_95 .. :try_end_ce} :catch_e9

    goto/16 :goto_20

    .line 154
    :catch_d0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 166
    :cond_d4
    :goto_d4
    invoke-static {p0}, Lcom/qbao/core/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 156
    :catch_da
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_d4

    .line 158
    :catch_df
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_d4

    .line 160
    :catch_e4
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d4

    .line 162
    :catch_e9
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lcom/qbao/core/b/f;->printStackTrace()V

    goto :goto_d4
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_12

    .line 48
    invoke-static {p0}, Lcom/qbao/core/b/b;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_10

    .line 78
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 48
    goto :goto_f

    .line 50
    :cond_12
    invoke-static {}, Lcom/qbao/core/b/a;->a()Z

    move-result v2

    .line 51
    if-eqz v2, :cond_1a

    move v0, v2

    .line 52
    goto :goto_f

    .line 54
    :cond_1a
    invoke-static {}, Lcom/qbao/core/b/d;->a()Z

    move-result v2

    .line 55
    if-eqz v2, :cond_22

    move v0, v2

    .line 56
    goto :goto_f

    .line 58
    :cond_22
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    const-string v4, "Philips T939"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 62
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "phone0"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_62

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "phone1"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_62
    move v0, v1

    goto :goto_f

    .line 64
    :cond_64
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "phone"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_82

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "phone2"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f

    .line 65
    :cond_82
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "telephony.registry"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "telephony.registry2"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_9d} :catch_a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_9d} :catch_aa
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_9d} :catch_af
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_9d} :catch_b4
    .catch Lcom/qbao/core/b/f; {:try_start_2 .. :try_end_9d} :catch_b9

    move-result-object v2

    if-nez v2, :cond_f

    :cond_a0
    move v0, v1

    .line 64
    goto/16 :goto_f

    .line 67
    :catch_a3
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_a7
    move v0, v1

    .line 78
    goto/16 :goto_f

    .line 69
    :catch_aa
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_a7

    .line 71
    :catch_af
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a7

    .line 73
    :catch_b4
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a7

    .line 75
    :catch_b9
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lcom/qbao/core/b/f;->printStackTrace()V

    goto :goto_a7
.end method

.method public static b(Landroid/content/Context;I)Z
    .registers 4

    .prologue
    .line 224
    const-string v0, "1"

    invoke-static {p0, p1}, Lcom/qbao/core/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/core/b/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "0"

    :cond_14
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    const-string v0, "0"

    .line 185
    :goto_8
    return-object v0

    .line 178
    :cond_9
    const-string v0, "46000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "46007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 179
    :cond_21
    const-string v0, "1"

    goto :goto_8

    .line 180
    :cond_24
    const-string v0, "46001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "46006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 181
    :cond_34
    const-string v0, "2"

    goto :goto_8

    .line 182
    :cond_37
    const-string v0, "46003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "46005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 183
    :cond_47
    const-string v0, "3"

    goto :goto_8

    .line 185
    :cond_4a
    const-string v0, "0"

    goto :goto_8
.end method

.method private static d(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "find"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    if-eqz v0, :cond_32

    .line 204
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 205
    :cond_32
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v0, v1

    .line 219
    :goto_3b
    return v0

    .line 207
    :cond_3c
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 208
    const/4 v0, 0x2

    goto :goto_3b

    .line 209
    :cond_46
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 210
    const/4 v0, 0x3

    goto :goto_3b

    .line 211
    :cond_50
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 212
    const/4 v0, 0x4

    goto :goto_3b

    .line 213
    :cond_5a
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_66

    move-result v0

    if-eqz v0, :cond_64

    .line 214
    const/4 v0, 0x5

    goto :goto_3b

    :cond_64
    move v0, v2

    .line 216
    goto :goto_3b

    .line 218
    :catch_66
    move-exception v0

    move v0, v2

    .line 219
    goto :goto_3b
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-static {p0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 91
    invoke-static {p0, v2}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 92
    invoke-static {p0, v2}, Lcom/qbao/core/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_13
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 100
    invoke-static {p0}, Lcom/qbao/core/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 103
    const-string v0, "0"

    .line 105
    :cond_25
    return-object v0

    .line 93
    :cond_26
    invoke-static {p0, v3}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 94
    invoke-static {p0, v3}, Lcom/qbao/core/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 97
    :cond_31
    invoke-static {p0, v2}, Lcom/qbao/core/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 171
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 228
    invoke-static {p0}, Lcom/qbao/core/b/g;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "1"

    invoke-static {p0}, Lcom/qbao/core/b/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/core/b/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-static {p0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 233
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0, v0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 239
    :cond_14
    :goto_14
    return v0

    .line 236
    :cond_15
    invoke-static {p0}, Lcom/qbao/core/b/g;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    .line 239
    :cond_1a
    invoke-static {p0}, Lcom/qbao/core/b/g;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 251
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 253
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 258
    const/4 v0, 0x1

    .line 259
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static i(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 263
    invoke-static {p0}, Lcom/qbao/core/b/g;->n(Landroid/content/Context;)I

    move-result v0

    .line 264
    packed-switch v0, :pswitch_data_10

    .line 284
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 270
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 280
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    .line 282
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_8

    .line 264
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 289
    invoke-static {p0}, Lcom/qbao/core/b/g;->k(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 290
    if-nez v0, :cond_9

    const-string v0, "NONE"

    .line 294
    :goto_8
    return-object v0

    .line 291
    :cond_9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v0, "WIFI"

    goto :goto_8

    .line 292
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 293
    if-nez v1, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 294
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static k(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 298
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 299
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 309
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 310
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static m(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 319
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 320
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 322
    :goto_16
    if-eqz v0, :cond_36

    .line 323
    const-string v3, "Network"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "network ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is connected."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 325
    :cond_36
    return v0

    .line 321
    :cond_37
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static n(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 329
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 330
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_16

    .line 332
    :cond_14
    const/4 v0, 0x0

    .line 334
    :goto_15
    return v0

    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    goto :goto_15
.end method
