.class public Lcom/facebook/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 65
    sput-boolean v1, Lcom/facebook/apache/commons/logging/LogSource;->a:Z

    .line 68
    sput-boolean v1, Lcom/facebook/apache/commons/logging/LogSource;->b:Z

    .line 71
    :try_start_0
    const-string v0, "com.facebook.apache.log4j.Logger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    :try_start_1
    const-string v0, "java.util.logging.Logger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    const/4 v0, 0x0

    .line 104
    :try_start_2
    const-string v1, "com.facebook.apache.commons.logging.log"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    const-string v1, "com.facebook.apache.commons.logging.Log"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .line 110
    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    .line 112
    :try_start_3
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    :goto_3
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->a:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/facebook/apache/commons/logging/LogSource;->a:Z

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->b:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    sput-boolean v1, Lcom/facebook/apache/commons/logging/LogSource;->b:Z

    goto :goto_1

    :catch_2
    move-exception v0

    .line 115
    :try_start_6
    const-string v0, "com.facebook.apache.commons.logging.impl.NoOpLog"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 120
    :catch_3
    move-exception v0

    goto :goto_3

    .line 123
    :cond_3
    :try_start_7
    sget-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->a:Z

    if-eqz v0, :cond_4

    .line 124
    const-string v0, "com.facebook.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 135
    :try_start_8
    const-string v0, "com.facebook.apache.commons.logging.impl.NoOpLog"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    .line 126
    :cond_4
    :try_start_9
    sget-boolean v0, Lcom/facebook/apache/commons/logging/LogSource;->b:Z

    if-eqz v0, :cond_5

    .line 127
    const-string v0, "com.facebook.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :cond_5
    const-string v0, "com.facebook.apache.commons.logging.impl.NoOpLog"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogSource;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 169
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 171
    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
