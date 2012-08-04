.class public Lcom/facebook/orca/common/names/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Locale;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->a:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->b:Ljava/lang/String;

    .line 38
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->d:Ljava/util/HashSet;

    .line 113
    invoke-static {p2}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    .line 114
    invoke-static {p3}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->e:Ljava/util/HashSet;

    .line 115
    invoke-static {p4}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    .line 116
    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/facebook/orca/common/names/NameSplitter;->f:Ljava/util/Locale;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->f:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->g:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    goto :goto_0

    .line 126
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 135
    if-eqz p0, :cond_0

    .line 136
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 138
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 177
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x4

    .line 185
    :goto_0
    return v0

    .line 180
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x5

    goto :goto_0

    .line 182
    :cond_1
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const/4 v0, 0x3

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    if-nez p2, :cond_1

    .line 167
    :cond_0
    return v1

    .line 152
    :cond_1
    new-instance v3, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;

    invoke-direct {v3, p2}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 158
    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v0, v2

    .line 159
    iget-object v2, p0, Lcom/facebook/orca/common/names/NameSplitter;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->d(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    .line 163
    :cond_2
    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v0

    :goto_0
    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 164
    add-int/lit8 v2, v1, 0x1

    invoke-static {v3}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, p1, v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method
