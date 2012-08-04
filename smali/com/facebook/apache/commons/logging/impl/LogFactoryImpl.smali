.class public Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;
.super Lcom/facebook/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# static fields
.field private static final a:I

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Hashtable;

.field private f:Ljava/util/Hashtable;

.field private g:Ljava/lang/reflect/Constructor;

.field private h:[Ljava/lang/Class;

.field private i:Ljava/lang/reflect/Method;

.field private j:[Ljava/lang/Class;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0x29

    sput v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a:I

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.facebook.apache.commons.logging.impl.Log4JLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.facebook.apache.commons.logging.impl.Jdk14Logger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.facebook.apache.commons.logging.impl.Jdk13LumberjackLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.facebook.apache.commons.logging.impl.SimpleLog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/LogFactory;-><init>()V

    .line 190
    iput-boolean v2, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->c:Z

    .line 201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f:Ljava/util/Hashtable;

    .line 224
    iput-object v4, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g:Ljava/lang/reflect/Constructor;

    .line 230
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->h:[Ljava/lang/Class;

    .line 238
    iput-object v4, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i:Ljava/lang/reflect/Method;

    .line 244
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lcom/facebook/apache/commons/logging/LogFactory;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->j:[Ljava/lang/Class;

    .line 95
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e()V

    .line 96
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Instance created."

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/apache/commons/logging/Log;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1039
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to instantiate \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1043
    :cond_0
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    .line 1048
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    move-object v2, v3

    move-object v0, v3

    .line 1053
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to load \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' from classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1059
    :try_start_0
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1066
    if-eqz v1, :cond_3

    .line 1067
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1072
    :goto_1
    if-nez v4, :cond_4

    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Class \'"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] cannot be found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 1081
    :cond_1
    :goto_2
    const/4 v4, 0x1

    :try_start_1
    invoke-static {p1, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 1115
    :goto_3
    :try_start_2
    iget-object v5, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->h:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    .line 1116
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1122
    instance-of v7, v0, Lcom/facebook/apache/commons/logging/Log;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    if-eqz v7, :cond_5

    .line 1124
    :try_start_4
    check-cast v0, Lcom/facebook/apache/commons/logging/Log;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    move-object v2, v4

    .line 1190
    :goto_4
    if-eqz v0, :cond_2

    .line 1192
    iput-object v5, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g:Ljava/lang/reflect/Constructor;

    .line 1197
    :try_start_5
    const-string v4, "setLogFactory"

    iget-object v5, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->j:[Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i:Ljava/lang/reflect/Method;

    .line 1199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found method setLogFactory(LogFactory) in \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 1210
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Log adapter \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' from classloader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been selected for use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1216
    :cond_2
    return-object v0

    .line 1069
    :cond_3
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".class"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    goto/16 :goto_1

    .line 1075
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Class \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' was found at \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    .line 1139
    :catch_0
    move-exception v4

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    .line 1145
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The log adapter \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is missing dependencies when loaded via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    move-object v5, v4

    move-object v0, v3

    .line 1153
    goto/16 :goto_4

    .line 1082
    :catch_1
    move-exception v4

    .line 1086
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "The log adapter \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' is not available via classloader "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 1102
    :try_start_8
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v4

    goto/16 :goto_3

    .line 1103
    :catch_2
    move-exception v4

    .line 1105
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "The log adapter \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' is not available via the LogFactoryImpl class classloader: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    move-object v5, v0

    move-object v0, v3

    .line 1111
    goto/16 :goto_4

    .line 1138
    :cond_5
    :try_start_a
    invoke-direct {p0, v1, v4}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    :try_end_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_a .. :try_end_a} :catch_9
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    move-object v4, v5

    .line 1181
    :goto_7
    if-eqz v1, :cond_6

    .line 1182
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_0

    .line 1154
    :catch_3
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    .line 1161
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "The log adapter \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' is unable to initialize itself when loaded via classloader "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    move-object v0, v3

    .line 1169
    goto/16 :goto_4

    .line 1170
    :catch_4
    move-exception v0

    .line 1173
    throw v0

    .line 1174
    :catch_5
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    .line 1178
    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_7

    .line 1202
    :catch_6
    move-exception v4

    iput-object v3, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i:Ljava/lang/reflect/Method;

    .line 1203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[INFO] \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not declare optional method setLogFactory(LogFactory)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1174
    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v2, v4

    goto :goto_9

    .line 1154
    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v2, v4

    goto :goto_8

    .line 1139
    :catch_b
    move-exception v0

    move-object v4, v5

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :cond_6
    move-object v5, v4

    move-object v0, v3

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter

    .prologue
    .line 700
    :try_start_0
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$3;-><init>(Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-object v0

    .line 707
    :catch_0
    move-exception v0

    const-string v0, "[SECURITY] Unable to obtain parent classloader"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1314
    if-nez p0, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-object p1

    .line 1317
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 1318
    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 1324
    :goto_1
    if-eqz v0, :cond_4

    .line 1325
    if-ne v0, p1, :cond_3

    move-object p1, p0

    .line 1326
    goto :goto_0

    .line 1327
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p1

    .line 1332
    :goto_2
    if-eqz v0, :cond_5

    .line 1333
    if-eq v0, p0, :cond_0

    .line 1335
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 1338
    :cond_5
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 683
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1425
    .line 1426
    const-class v0, Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1427
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move v0, v1

    .line 1428
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1429
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1430
    const/4 v1, 0x1

    .line 1435
    :cond_0
    if-eqz v1, :cond_6

    .line 1438
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    :try_start_0
    const-class v0, Lcom/facebook/apache/commons/logging/Log;

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found in classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". It is bound to a Log interface which is not the one loaded from classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->m:Z

    if-nez v0, :cond_4

    .line 1456
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1457
    const-string v1, "Terminating logging for this context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1458
    const-string v1, "due to bad log hierarchy. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    const-string v1, "You have more than one version of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    const-class v1, Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    const-string v1, "\' visible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1462
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1463
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1465
    :cond_2
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1428
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1449
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while trying to output diagnostics about bad class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 1468
    :cond_4
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1469
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1470
    const-string v1, "Warning: bad log hierarchy. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    const-string v1, "You have more than one version of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1472
    const-class v1, Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    const-string v1, "\' visible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1499
    :cond_5
    :goto_2
    return-void

    .line 1478
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->l:Z

    if-nez v0, :cond_8

    .line 1479
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1480
    const-string v1, "Terminating logging for this context. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    const-string v1, "Log class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1482
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    const-string v1, "\' does not implement the Log interface."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1485
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1488
    :cond_7
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :cond_8
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1492
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1493
    const-string v1, "[WARNING] Log class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1495
    const-string v1, "\' does not implement the Log interface."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1360
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate Log \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1366
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1370
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 1371
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "... InvocationTargetException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1377
    instance-of v1, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v1, :cond_0

    .line 1378
    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    .line 1379
    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1380
    if-eqz v0, :cond_0

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "... ExceptionInInitializerError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 1390
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->l:Z

    if-nez v0, :cond_1

    .line 1391
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, p2}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1393
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const/4 v1, 0x1

    sget v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a:I

    add-int/lit8 v5, v0, 0x5

    move-object v0, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const-string v0, " Did you mean \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    const-string v0, "\'?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x1

    .line 812
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter

    .prologue
    .line 447
    invoke-static {p0}, Lcom/facebook/apache/commons/logging/LogFactory;->c(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 476
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 480
    :try_start_0
    const-string v0, "BOOTLOADER"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LogFactoryImpl@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d:Ljava/lang/String;

    .line 488
    return-void

    .line 482
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private static f()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$1;

    invoke-direct {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 499
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->c(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;
    .locals 3
    .parameter

    .prologue
    .line 601
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    .line 604
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    .line 611
    :goto_0
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 612
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 613
    iget-object v2, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->i:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_0
    return-object v0

    .line 607
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 608
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/Log;
    :try_end_0
    .catch Lcom/facebook/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 623
    throw v0

    .line 625
    :catch_1
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_2

    .line 630
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 632
    :cond_2
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-direct {v1, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 634
    :catch_2
    move-exception v0

    .line 637
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-direct {v1, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 823
    const-string v0, "com.facebook.apache.commons.logging.Log.allowFlawedContext"

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->k:Z

    .line 824
    const-string v0, "com.facebook.apache.commons.logging.Log.allowFlawedDiscovery"

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->l:Z

    .line 825
    const-string v0, "com.facebook.apache.commons.logging.Log.allowFlawedHierarchy"

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->m:Z

    .line 826
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "Trying to get log class from attribute \'com.facebook.apache.commons.logging.Log\'"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 964
    :cond_0
    const-string v0, "com.facebook.apache.commons.logging.Log"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 966
    if-nez v0, :cond_7

    .line 967
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    const-string v0, "Trying to get log class from attribute \'com.facebook.apache.commons.logging.log\'"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 971
    :cond_1
    const-string v0, "com.facebook.apache.commons.logging.log"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 974
    :goto_0
    if-nez v1, :cond_3

    .line 975
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    const-string v0, "Trying to get log class from system property \'com.facebook.apache.commons.logging.Log\'"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 980
    :cond_2
    :try_start_0
    const-string v0, "com.facebook.apache.commons.logging.Log"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 989
    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 990
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 991
    const-string v0, "Trying to get log class from system property \'com.facebook.apache.commons.logging.log\'"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 995
    :cond_4
    :try_start_1
    const-string v0, "com.facebook.apache.commons.logging.log"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1007
    :goto_2
    if-eqz v0, :cond_5

    .line 1008
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_5
    return-object v0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No access allowed to system property \'com.facebook.apache.commons.logging.Log\' - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 996
    :catch_1
    move-exception v0

    .line 997
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No access allowed to system property \'com.facebook.apache.commons.logging.log\' - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] Trying to get configuration for item "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 763
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_3

    .line 765
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] Found LogFactory attribute ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 768
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    :cond_2
    :goto_0
    return-object v0

    .line 771
    :cond_3
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] No LogFactory attribute found for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 780
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_7

    .line 782
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENV] Found system property ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] Security prevented reading system property "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 797
    :cond_5
    :goto_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] No configuration defined for item "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    .line 801
    goto :goto_0

    .line 788
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] No system property found for property "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private i(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 841
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "Discovering a Log implementation..."

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 845
    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g()V

    .line 847
    const/4 v1, 0x0

    .line 850
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->h()Ljava/lang/String;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_3

    .line 853
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to load user-specified log class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 858
    :cond_1
    invoke-direct {p0, v0, p1, v3}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v1

    .line 861
    if-nez v1, :cond_6

    .line 862
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "User-specified log class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    const-string v2, "\' cannot be found or is not useable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 868
    if-eqz v0, :cond_2

    .line 869
    const-string v2, "com.facebook.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v1, v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v2, "com.facebook.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v1, v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v2, "com.facebook.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-static {v1, v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v2, "com.facebook.apache.commons.logging.impl.SimpleLog"

    invoke-static {v1, v0, v2}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_2
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_3
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    const-string v0, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 913
    :cond_4
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    if-nez v1, :cond_5

    .line 914
    sget-object v1, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, v3}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v1

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    :cond_5
    if-nez v1, :cond_6

    .line 918
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v1, "No suitable Log implementation"

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_6
    return-object v1
.end method

.method private i()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 1239
    const-class v0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1241
    iget-boolean v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->c:Z

    if-nez v1, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-object v0

    .line 1245
    :cond_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1247
    invoke-static {v1, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1250
    if-nez v0, :cond_4

    .line 1255
    iget-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->k:Z

    if-eqz v0, :cond_3

    .line 1256
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    const-string v0, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 1265
    goto :goto_0

    .line 1268
    :cond_3
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v1, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_4
    if-eq v0, v1, :cond_0

    .line 1281
    iget-boolean v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->k:Z

    if-eqz v1, :cond_5

    .line 1282
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    const-string v1, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_5
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v1, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;
    .locals 1
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->a(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;
    .locals 2
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/Log;

    .line 335
    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->g:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "setAttribute: call too late; configuration already performed."

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->f(Ljava/lang/String;)V

    .line 402
    :cond_0
    if-nez p2, :cond_2

    .line 403
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :goto_0
    const-string v0, "use_tccl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->c:Z

    .line 412
    :cond_1
    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
