.class public Lcom/facebook/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lcom/facebook/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/util/Properties;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/text/DateFormat;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a:Ljava/util/Properties;

    .line 93
    sput-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b:Z

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->c:Z

    .line 100
    sput-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->d:Z

    .line 102
    const-string v0, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->f:Ljava/text/DateFormat;

    .line 163
    const-string v0, "simplelog.properties"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    sget-object v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :cond_0
    :goto_0
    const-string v0, "com.facebook.apache.commons.logging.simplelog.showlogname"

    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b:Z

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b:Z

    .line 174
    const-string v0, "com.facebook.apache.commons.logging.simplelog.showShortLogname"

    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->c:Z

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->c:Z

    .line 175
    const-string v0, "com.facebook.apache.commons.logging.simplelog.showdatetime"

    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->d:Z

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    sput-boolean v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->d:Z

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "com.facebook.apache.commons.logging.simplelog.dateTimeFormat"

    sget-object v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    .line 181
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->f:Ljava/text/DateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    const-string v0, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->f:Ljava/text/DateFormat;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-static {p0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->d:Z

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 293
    sget-object v2, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->f:Ljava/text/DateFormat;

    monitor-enter v2

    .line 294
    :try_start_0
    sget-object v3, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->f:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 295
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 311
    :goto_0
    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->c:Z

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 314
    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    :cond_2
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    if-eqz p3, :cond_3

    .line 328
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 333
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 334
    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 335
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 336
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_3
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/StringBuffer;)V

    .line 342
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 302
    :pswitch_0
    const-string v1, "[TRACE] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 303
    :pswitch_1
    const-string v1, "[DEBUG] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v1, "[INFO] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 305
    :pswitch_3
    const-string v1, "[WARN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 306
    :pswitch_4
    const-string v1, "[ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 307
    :pswitch_5
    const-string v1, "[FATAL] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 319
    :cond_4
    sget-boolean v1, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->b:Z

    if-eqz v1, :cond_2

    .line 320
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 368
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-static {p0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 707
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static b()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 653
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 661
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 697
    :goto_0
    if-nez v0, :cond_0

    .line 698
    const-class v0, Lcom/facebook/apache/commons/logging/impl/SimpleLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 702
    :cond_0
    return-object v0

    .line 690
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 665
    :catch_1
    move-exception v0

    .line 682
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-nez v2, :cond_1

    .line 687
    new-instance v2, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v3, "Unexpected InvocationTargetException"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 694
    goto :goto_0
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 384
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 387
    :cond_0
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 400
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0, v1, p1, p2}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 403
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 508
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 511
    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 446
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 449
    :cond_0
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    return v0
.end method

.method public final warn(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 477
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 480
    :cond_0
    return-void
.end method
