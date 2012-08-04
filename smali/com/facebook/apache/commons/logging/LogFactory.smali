.class public abstract Lcom/facebook/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static a:Ljava/io/PrintStream;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/ClassLoader;

.field private static d:Ljava/util/Hashtable;

.field private static e:Lcom/facebook/apache/commons/logging/LogFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    .line 309
    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->d:Ljava/util/Hashtable;

    .line 325
    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->e:Lcom/facebook/apache/commons/logging/LogFactory;

    .line 1816
    const-class v0, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->c(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    .line 1817
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->f()V

    .line 1818
    const-class v0, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->e(Ljava/lang/Class;)V

    .line 1819
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->c()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->d:Ljava/util/Hashtable;

    .line 1820
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    const-string v0, "BOOTSTRAP COMPLETED"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1823
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;
    .locals 1
    .parameter

    .prologue
    .line 970
    if-nez p0, :cond_0

    .line 977
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->e:Lcom/facebook/apache/commons/logging/LogFactory;

    .line 982
    :goto_0
    return-object v0

    .line 979
    :cond_0
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/LogFactory;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 1069
    instance-of v1, v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    if-eqz v1, :cond_1

    .line 1070
    check-cast v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    .line 1071
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while loading the factory class:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1076
    :cond_0
    throw v0

    .line 1078
    :cond_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to manage classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1083
    :cond_2
    check-cast v0, Lcom/facebook/apache/commons/logging/LogFactory;

    return-object v0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1355
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method protected static a()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 896
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 901
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    :goto_0
    return-object v0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    :try_start_2
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v2, "Unexpected IllegalAccessException"

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 932
    :catch_1
    move-exception v0

    .line 934
    const-class v0, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->c(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 906
    :catch_2
    move-exception v0

    .line 923
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-nez v2, :cond_0

    .line 928
    new-instance v1, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v2, "Unexpected InvocationTargetException"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v0, v1

    .line 948
    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1125
    if-eqz p1, :cond_7

    .line 1131
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 1132
    :try_start_1
    const-class v0, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Loaded class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from classloader "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1160
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/LogFactory;

    .line 1276
    :goto_1
    return-object v0

    .line 1150
    :cond_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Factory class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " loaded from classloader "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not extend \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' as loaded by this classloader."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1156
    const-string v0, "[BAD CL TREE] "

    invoke-static {v0, p1}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    :try_start_2
    sget-object v2, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    if-ne p1, v2, :cond_7

    .line 1165
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to locate any class called \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1170
    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1263
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 1265
    :goto_2
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1266
    const-string v2, "Unable to create LogFactory instance."

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1268
    :cond_3
    if-eqz v0, :cond_9

    const-class v2, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1271
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    const-string v2, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {v0, v2, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1173
    :catch_2
    move-exception v0

    .line 1174
    :try_start_3
    sget-object v2, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    if-ne p1, v2, :cond_7

    .line 1176
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be loaded via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - it depends on some other class that cannot be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1183
    :cond_4
    throw v0

    .line 1187
    :catch_3
    move-exception v0

    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    if-ne p1, v0, :cond_7

    .line 1193
    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->d(Ljava/lang/Class;)Z

    move-result v0

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be converted to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/facebook/apache/commons/logging/LogFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    if-eqz v0, :cond_6

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. Background can be found in http://commons.apache.org/logging/tech.html. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "If you have not explicitly specified a custom LogFactory then it is likely that the container has set one without your knowledge. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "In this case, consider using the commons-logging-adapters.jar file or specifying the standard LogFactory from the command line. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Help can be found @http://commons.apache.org/logging/troubleshooting.html."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1217
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1220
    :cond_5
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 1221
    throw v2

    .line 1212
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Please check the custom implementation. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1255
    :cond_7
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load factory class via classloader "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1261
    :cond_8
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1262
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/LogFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1276
    :cond_9
    new-instance v0, Lcom/facebook/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1263
    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1787
    if-nez p0, :cond_0

    .line 1788
    const-string v0, "null"

    .line 1790
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1558
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/apache/commons/logging/LogFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/net/URL;)Ljava/util/Properties;
    .locals 1
    .parameter

    .prologue
    .line 1420
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$5;

    invoke-direct {v0, p0}, Lcom/facebook/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    .line 1440
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method private static a(Ljava/lang/ClassLoader;Lcom/facebook/apache/commons/logging/LogFactory;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    .line 1001
    if-nez p0, :cond_1

    .line 1002
    sput-object p1, Lcom/facebook/apache/commons/logging/LogFactory;->e:Lcom/facebook/apache/commons/logging/LogFactory;

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;
    .locals 1
    .parameter

    .prologue
    .line 685
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->d()Lcom/facebook/apache/commons/logging/LogFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;
    .locals 1
    .parameter

    .prologue
    .line 704
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->d()Lcom/facebook/apache/commons/logging/LogFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1383
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1407
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 1408
    check-cast v0, Ljava/util/Enumeration;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1733
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    if-eqz p1, :cond_2

    .line 1738
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1743
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1749
    if-eqz p1, :cond_0

    .line 1750
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ClassLoader tree:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1752
    :cond_3
    invoke-static {p1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1753
    if-ne p1, v0, :cond_4

    .line 1754
    const-string v2, " (SYSTEM) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1758
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1764
    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1765
    if-nez p1, :cond_3

    .line 1766
    const-string v0, "BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1767
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1745
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Security forbids determining the system classloader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1760
    :catch_1
    move-exception v0

    const-string v0, " --> SECRET"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected static b()Z
    .locals 1

    .prologue
    .line 1633
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3
    .parameter

    .prologue
    .line 801
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get classloader for class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to security restrictions - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 808
    :cond_0
    throw v0
.end method

.method private static final c()Ljava/util/Hashtable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 346
    :try_start_0
    const-string v0, "com.facebook.apache.commons.logging.LogFactory.HashtableImpl"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    :goto_0
    if-nez v0, :cond_3

    .line 354
    const-string v0, "com.facebook.apache.commons.logging.impl.WeakHashtable"

    move-object v2, v0

    .line 357
    :goto_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_2
    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 377
    :cond_0
    return-object v0

    .line 347
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 350
    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 362
    const-string v0, "com.facebook.apache.commons.logging.impl.WeakHashtable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 370
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private static final c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 1465
    .line 1469
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 1471
    if-nez v10, :cond_b

    .line 1544
    :cond_0
    :goto_0
    return-object v1

    .line 1475
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1476
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 1478
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/net/URL;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1479
    if-eqz v3, :cond_1

    .line 1480
    if-nez v2, :cond_3

    .line 1483
    :try_start_2
    const-string v1, "priority"

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1485
    if-eqz v1, :cond_a

    .line 1486
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1489
    :goto_2
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LOOKUP] Properties file found at \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move-object v1, v0

    move-wide v8, v4

    move-object v2, v3

    .line 1494
    goto :goto_1

    .line 1495
    :cond_3
    :try_start_3
    const-string v4, "priority"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1497
    if-eqz v4, :cond_9

    .line 1498
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1501
    :goto_3
    cmpl-double v11, v4, v8

    if-lez v11, :cond_5

    .line 1502
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1503
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[LOOKUP] Properties file at \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' with priority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " overrides file at \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' with priority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    :cond_4
    move-object v1, v0

    move-wide v8, v4

    move-object v2, v3

    .line 1512
    goto/16 :goto_1

    .line 1514
    :cond_5
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "[LOOKUP] Properties file at \'"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' with priority "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not override file at \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' with priority "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1526
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 1527
    :goto_4
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1528
    const-string v2, "SecurityException thrown while trying to find/read config files."

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1532
    :cond_6
    :goto_5
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1533
    if-nez v1, :cond_8

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[LOOKUP] No properties file of name \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' found."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    move-object v1, v2

    .line 1530
    goto :goto_5

    .line 1538
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LOOKUP] Properties file of name \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' found at \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1526
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_4

    :cond_9
    move-wide v4, v6

    goto/16 :goto_3

    :cond_a
    move-wide v4, v6

    goto/16 :goto_2

    :cond_b
    move-wide v8, v6

    move-object v2, v1

    goto/16 :goto_1
.end method

.method protected static final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1669
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 1670
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1671
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1673
    :cond_0
    return-void
.end method

.method private static d()Lcom/facebook/apache/commons/logging/LogFactory;
    .locals 8

    .prologue
    .line 423
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->e()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 425
    if-nez v1, :cond_0

    .line 429
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "Context classloader is null."

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 669
    :goto_0
    return-object v0

    .line 440
    :cond_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 444
    const-string v0, "[LOOKUP] "

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 457
    :cond_2
    const-string v0, "commons-logging.properties"

    invoke-static {v1, v0}, Lcom/facebook/apache/commons/logging/LogFactory;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    .line 462
    if-eqz v4, :cond_14

    .line 463
    const-string v0, "use_tccl"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_14

    .line 467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    .line 475
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    .line 482
    :goto_1
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    const-string v3, "[LOOKUP] Looking for system property [com.facebook.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 489
    :cond_3
    :try_start_0
    const-string v3, "com.facebook.apache.commons.logging.LogFactory"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    if-eqz v3, :cond_e

    .line 491
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[LOOKUP] Creating an instance of LogFactory class \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as specified by system property com.facebook.apache.commons.logging.LogFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 497
    :cond_4
    invoke-static {v3, v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 537
    :cond_5
    :goto_2
    if-nez v2, :cond_8

    .line 538
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 539
    const-string v3, "[LOOKUP] Looking for a resource file of name [META-INF/services/com.facebook.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 544
    :cond_6
    :try_start_1
    const-string v3, "META-INF/services/com.facebook.apache.commons.logging.LogFactory"

    invoke-static {v1, v3}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 547
    if-eqz v5, :cond_10

    .line 552
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 557
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 558
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 560
    if-eqz v5, :cond_8

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 562
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[LOOKUP]  Creating an instance of LogFactory class "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " as specified by file \'META-INF/services/com.facebook.apache.commons.logging.LogFactory"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' which was present in the path of the context classloader."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 569
    :cond_7
    invoke-static {v5, v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 597
    :cond_8
    :goto_4
    if-nez v2, :cond_b

    .line 598
    if-eqz v4, :cond_12

    .line 599
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 600
    const-string v3, "[LOOKUP] Looking in properties file for entry with key \'com.facebook.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 605
    :cond_9
    const-string v3, "com.facebook.apache.commons.logging.LogFactory"

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_11

    .line 607
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 612
    :cond_a
    invoke-static {v3, v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;

    move-result-object v2

    .line 633
    :cond_b
    :goto_5
    if-nez v2, :cond_d

    .line 634
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'com.facebook.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 650
    :cond_c
    const-string v0, "com.facebook.apache.commons.logging.impl.LogFactoryImpl"

    sget-object v2, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lcom/facebook/apache/commons/logging/LogFactory;

    move-result-object v2

    .line 653
    :cond_d
    if-eqz v2, :cond_13

    .line 657
    invoke-static {v1, v2}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/ClassLoader;Lcom/facebook/apache/commons/logging/LogFactory;)V

    .line 659
    if-eqz v4, :cond_13

    .line 660
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 661
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 662
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 664
    invoke-virtual {v2, v0, v3}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 499
    :cond_e
    :try_start_4
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 500
    const-string v3, "[LOOKUP] No system property [com.facebook.apache.commons.logging.LogFactory] defined."

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 505
    :catch_0
    move-exception v3

    .line 506
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]. Trying alternative implementations..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 514
    :catch_1
    move-exception v0

    .line 520
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as specified by a system property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 527
    :cond_f
    throw v0

    .line 554
    :catch_2
    move-exception v3

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 579
    :catch_3
    move-exception v3

    .line 583
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]. Trying alternative implementations..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 573
    :cond_10
    :try_start_6
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 574
    const-string v3, "[LOOKUP] No resource file with name \'META-INF/services/com.facebook.apache.commons.logging.LogFactory\' found."

    invoke-static {v3}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 616
    :cond_11
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 617
    const-string v0, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 622
    :cond_12
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 623
    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    move-object v0, v2

    .line 669
    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/Class;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1293
    .line 1294
    if-eqz p0, :cond_0

    .line 1296
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1297
    if-nez v1, :cond_1

    .line 1298
    const-string v1, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1343
    :cond_0
    :goto_0
    return v0

    .line 1300
    :cond_1
    const-string v2, "[CUSTOM LOG FACTORY] "

    invoke-static {v2, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1301
    const-string v2, "com.facebook.apache.commons.logging.LogFactory"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1303
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 1304
    if-eqz v0, :cond_2

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CUSTOM LOG FACTORY] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v1

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CUSTOM LOG FACTORY] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement LogFactory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1321
    :catch_1
    move-exception v1

    .line 1328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :catch_2
    move-exception v1

    const-string v1, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static e()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 859
    new-instance v0, Lcom/facebook/apache/commons/logging/LogFactory$1;

    invoke-direct {v0}, Lcom/facebook/apache/commons/logging/LogFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 385
    if-nez p0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Class;)V
    .locals 4
    .parameter

    .prologue
    .line 1693
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    :goto_0
    return-void

    .line 1701
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ENV] Extension directories (java.ext.dir): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "java.ext.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ENV] Application classpath (java.class.path): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1711
    :try_start_1
    invoke-static {p0}, Lcom/facebook/apache/commons/logging/LogFactory;->c(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1719
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENV] Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was loaded via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENV] Ancestry of classloader which loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 1704
    :catch_0
    move-exception v0

    const-string v0, "[ENV] Security setting prevent interrogation of system classpaths."

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 1714
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENV] Security forbids determining the classloader for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static f()V
    .locals 3

    .prologue
    .line 1575
    :try_start_0
    const-string v0, "com.facebook.apache.commons.logging.diagnostics.dest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1576
    if-nez v0, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1585
    :cond_0
    const-string v1, "STDOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    .line 1611
    :goto_1
    :try_start_1
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    .line 1612
    sget-object v1, Lcom/facebook/apache/commons/logging/LogFactory;->c:Ljava/lang/ClassLoader;

    if-nez v1, :cond_3

    .line 1613
    const-string v0, "BOOTLOADER"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1620
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LogFactory from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->b:Ljava/lang/String;

    goto :goto_0

    .line 1587
    :cond_1
    const-string v1, "STDERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1588
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    goto :goto_1

    .line 1592
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1593
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1615
    :cond_3
    :try_start_3
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    .line 1617
    :catch_1
    move-exception v0

    .line 1618
    const-string v0, "UNKNOWN"

    goto :goto_2

    .line 1582
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static final f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1655
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 1656
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    sget-object v1, Lcom/facebook/apache/commons/logging/LogFactory;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1657
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1658
    sget-object v0, Lcom/facebook/apache/commons/logging/LogFactory;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1660
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;
.end method

.method public abstract a(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method
