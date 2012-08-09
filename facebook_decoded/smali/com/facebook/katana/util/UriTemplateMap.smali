.class public Lcom/facebook/katana/util/UriTemplateMap;
.super Ljava/lang/Object;
.source "UriTemplateMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<TT;>.MapEntry;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "\\{([#]?)([^ }]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/UriTemplateMap;->b:Ljava/util/regex/Pattern;

    .line 277
    const-string v0, "\\{([#!]?)([^ }]+)(?: ([^}]+))?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/UriTemplateMap;->c:Ljava/util/regex/Pattern;

    .line 284
    const-string v0, "&?([^=]+)=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/UriTemplateMap;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/UriTemplateMap;->a:Ljava/util/List;

    .line 380
    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/facebook/katana/util/UriTemplateMap;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/facebook/katana/util/UriTemplateMap;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lcom/facebook/katana/util/UriTemplateMap;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lcom/facebook/katana/util/UriTemplateMap;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    sget-object v1, Lcom/facebook/katana/util/UriTemplateMap;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 333
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 339
    :cond_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 347
    move v0, v1

    move v2, v1

    .line 348
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 348
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 352
    goto :goto_1

    :sswitch_1
    move v2, v1

    .line 356
    goto :goto_1

    .line 359
    :sswitch_2
    if-nez v2, :cond_0

    .line 360
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    move-object v0, v2

    .line 369
    :goto_2
    return-object v0

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    aput-object p0, v0, v1

    const-string v1, ""

    aput-object v1, v0, v3

    goto :goto_2

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x3f -> :sswitch_2
        0x7b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/UriTemplateMap$UriMatch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v0, Lcom/facebook/katana/util/UriTemplateMap$InvalidUriException;

    const-string v1, "Key may not be null"

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/UriTemplateMap$InvalidUriException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/UriTemplateMap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/UriTemplateMap$MapEntry;

    .line 313
    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/UriTemplateMap$MapEntry;->a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_1

    .line 318
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    const-string v0, "Key template may not be null"

    .line 297
    new-instance v1, Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/UriTemplateMap;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/util/UriTemplateMap$MapEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/util/UriTemplateMap$MapEntry;-><init>(Lcom/facebook/katana/util/UriTemplateMap;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method
