.class public Lcom/facebook/orca/debug/BLog;
.super Ljava/lang/Object;
.source "BLog.java"


# static fields
.field private static volatile a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/facebook/orca/debug/BLog;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput p0, Lcom/facebook/orca/debug/BLog;->a:I

    .line 47
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    if-gt v0, p0, :cond_0

    .line 441
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 361
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 421
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    :cond_0
    return-void
.end method

.method public static varargs a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 383
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 402
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 89
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 286
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 162
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 143
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 216
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 197
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 232
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 270
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 302
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 303
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    sget v0, Lcom/facebook/orca/debug/BLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 340
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    :cond_0
    return-void
.end method
