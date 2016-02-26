.class public final Lcom/qbao/core/sms/b;
.super Ljava/lang/Object;
.source "SmsUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final an:Ljava/lang/String; = "cn.emagsoftware.telephony.SMS_SENT"

.field public static final ao:Ljava/lang/String; = "cn.emagsoftware.telephony.SMS_DELIVERED"

.field private static ap:I

.field private static aq:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string v0, "SmsUtils"

    sput-object v0, Lcom/qbao/core/sms/b;->TAG:Ljava/lang/String;

    .line 25
    sput v1, Lcom/qbao/core/sms/b;->ap:I

    .line 27
    sput v1, Lcom/qbao/core/sms/b;->aq:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic I()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lcom/qbao/core/sms/b;->aq:I

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V
    .registers 20

    .prologue
    .line 94
    invoke-static {p0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v3

    .line 96
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 97
    if-nez p6, :cond_7a

    .line 98
    const-string v2, "Philips T939"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 99
    const-string v1, "isms0"

    move-object v2, v1

    .line 114
    :goto_13
    sget v1, Lcom/qbao/core/sms/b;->ap:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qbao/core/sms/b;->ap:I

    .line 115
    new-instance v4, Landroid/content/Intent;

    const-string v1, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v1, "SMS_TOKEN"

    sget v5, Lcom/qbao/core/sms/b;->ap:I

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "SMS_TO"

    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_91

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    .line 120
    :goto_37
    const-string v1, "SMS_TEXT"

    invoke-virtual {v4, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    invoke-static {p0, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 122
    if-eqz p4, :cond_5a

    .line 123
    sget v1, Lcom/qbao/core/sms/b;->ap:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/qbao/core/sms/SmsSendCallback;->f(I)V

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/qbao/core/sms/SmsSendCallback;->a([I)V

    .line 125
    invoke-virtual/range {p4 .. p5}, Lcom/qbao/core/sms/SmsSendCallback;->setTimeout(I)V

    .line 126
    invoke-virtual/range {p4 .. p4}, Lcom/qbao/core/sms/SmsSendCallback;->G()V

    .line 129
    :cond_5a
    if-eqz v3, :cond_304

    .line 132
    :try_start_5c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_b5

    .line 133
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/qbao/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_75
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_75} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5c .. :try_end_75} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5c .. :try_end_75} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_75} :catch_105
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_75} :catch_11c

    .line 221
    :cond_75
    :goto_75
    return-void

    .line 101
    :cond_76
    const-string v1, "isms"

    move-object v2, v1

    .line 103
    goto :goto_13

    :cond_7a
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_75

    .line 104
    if-eqz v3, :cond_75

    .line 106
    const-string v2, "Philips T939"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 107
    const-string v1, "isms1"

    move-object v2, v1

    .line 108
    goto :goto_13

    .line 109
    :cond_8d
    const-string v1, "isms2"

    move-object v2, v1

    .line 111
    goto :goto_13

    .line 119
    :cond_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_37

    .line 136
    :cond_a0
    const/4 v6, 0x0

    :try_start_a1
    move-object/from16 v0, p3

    check-cast v0, [B

    move-object v8, v0

    const/4 v10, 0x0

    move-object v5, p1

    move v7, p2

    move-object v9, v4

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_af} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a1 .. :try_end_af} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a1 .. :try_end_af} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_a1 .. :try_end_af} :catch_105
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_af} :catch_11c

    goto :goto_75

    .line 206
    :catch_b0
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_75

    .line 142
    :cond_b5
    :try_start_b5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v1, v3, :cond_e9

    .line 143
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/qbao/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b5 .. :try_end_ce} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b5 .. :try_end_ce} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b5 .. :try_end_ce} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_b5 .. :try_end_ce} :catch_105
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ce} :catch_11c

    goto :goto_75

    .line 208
    :catch_cf
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_75

    .line 146
    :cond_d4
    const/4 v6, 0x0

    :try_start_d5
    move-object/from16 v0, p3

    check-cast v0, [B

    move-object v8, v0

    const/4 v10, 0x0

    move-object v5, p1

    move v7, p2

    move-object v9, v4

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_e3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d5 .. :try_end_e3} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d5 .. :try_end_e3} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d5 .. :try_end_e3} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_d5 .. :try_end_e3} :catch_105
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e3} :catch_11c

    goto :goto_75

    .line 210
    :catch_e4
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_75

    .line 152
    :cond_e9
    :try_start_e9
    invoke-static {}, Lcom/qbao/core/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 153
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10b

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/qbao/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    :try_end_103
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e9 .. :try_end_103} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e9 .. :try_end_103} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e9 .. :try_end_103} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e9 .. :try_end_103} :catch_105
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_103} :catch_11c

    goto/16 :goto_75

    .line 212
    :catch_105
    move-exception v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_75

    .line 156
    :cond_10b
    const/4 v6, 0x0

    :try_start_10c
    move-object/from16 v0, p3

    check-cast v0, [B

    move-object v8, v0

    const/4 v10, 0x0

    move-object v5, p1

    move v7, p2

    move-object v9, v4

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_11a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10c .. :try_end_11a} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10c .. :try_end_11a} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10c .. :try_end_11a} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_10c .. :try_end_11a} :catch_105
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_11a} :catch_11c

    goto/16 :goto_75

    .line 214
    :catch_11c
    move-exception v1

    .line 215
    if-eqz p4, :cond_127

    .line 216
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v12}, Lcom/qbao/core/sms/SmsSendCallback;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p4 .. p4}, Lcom/qbao/core/sms/SmsSendCallback;->H()Z

    .line 219
    :cond_127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_75

    .line 162
    :cond_12c
    :try_start_12c
    invoke-static {}, Lcom/qbao/core/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 163
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_147

    .line 164
    const/4 v2, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/qbao/core/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto/16 :goto_75

    .line 166
    :cond_147
    const/4 v6, 0x0

    move-object/from16 v0, p3

    check-cast v0, [B

    move-object v8, v0

    const/4 v10, 0x0

    move-object v5, p1

    move v7, p2

    move-object v9, v4

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/b/d;->a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto/16 :goto_75

    .line 172
    :cond_158
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 174
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    if-nez v1, :cond_197

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "can not get service which is named \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/core/util/p;->log(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 179
    :cond_197
    const-string v2, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 180
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 181
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    move-object/from16 v0, p3

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_250

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_205

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendText"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 185
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_75

    .line 187
    :cond_205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendText"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 188
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x3

    aput-object p3, v3, v5

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_75

    .line 191
    :cond_250
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_2a7

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 193
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const v6, 0xffff

    and-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    check-cast p3, [B

    aput-object p3, v3, v5

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_75

    .line 195
    :cond_2a7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendData"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const v6, 0xffff

    and-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    check-cast p3, [B

    aput-object p3, v3, v5

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_75

    .line 200
    :cond_304
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_31c

    .line 201
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_75

    .line 203
    :cond_31c
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p3

    check-cast v0, [B

    move-object v9, v0

    const/4 v11, 0x0

    move-object v6, p1

    move v8, p2

    move-object v10, v4

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_32d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12c .. :try_end_32d} :catch_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12c .. :try_end_32d} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12c .. :try_end_32d} :catch_e4
    .catch Ljava/lang/IllegalAccessException; {:try_start_12c .. :try_end_32d} :catch_105
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_32d} :catch_11c

    goto/16 :goto_75
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/a;I)V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    sput v6, Lcom/qbao/core/sms/b;->aq:I

    .line 42
    new-instance v4, Lcom/qbao/core/sms/b$1;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/qbao/core/sms/b$1;-><init>(Landroid/content/Context;SLjava/lang/Object;Lcom/qbao/core/sms/a;)V

    .line 69
    invoke-static {p0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 70
    invoke-static {p0, v6}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v0

    .line 71
    invoke-static {p0, v7}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 72
    if-eqz v0, :cond_22

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/qbao/core/sms/b;->a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V

    .line 82
    :cond_21
    :goto_21
    return-void

    .line 74
    :cond_22
    if-eqz v1, :cond_21

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move v6, v7

    .line 75
    invoke-static/range {v0 .. v6}, Lcom/qbao/core/sms/b;->a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V

    goto :goto_21

    .line 78
    :cond_2e
    invoke-static {p0}, Lcom/qbao/core/b/g;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 79
    invoke-static/range {v0 .. v6}, Lcom/qbao/core/sms/b;->a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V

    goto :goto_21
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V
    .registers 7

    .prologue
    .line 93
    invoke-static/range {p0 .. p6}, Lcom/qbao/core/sms/b;->a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V

    return-void
.end method

.method static synthetic g(I)V
    .registers 1

    .prologue
    .line 27
    sput p0, Lcom/qbao/core/sms/b;->aq:I

    return-void
.end method
