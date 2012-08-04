.class public Lcom/facebook/katana/model/BookmarksGroup;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "BookmarksGroup.java"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field

.field private final mAll:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/Bookmark;
        }
        jsonFieldName = "all"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisible:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/Bookmark;
        }
        jsonFieldName = "visible"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->id:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->name:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->mVisible:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->mAll:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/katana/model/BookmarksGroup;->id:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/facebook/katana/model/BookmarksGroup;->name:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/facebook/katana/model/BookmarksGroup;->mVisible:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/facebook/katana/model/BookmarksGroup;->mAll:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/model/BookmarksGroup;
    .locals 5
    .parameter

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->a(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->b(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->c(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->d(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->e(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->f(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {p0}, Lcom/facebook/katana/model/Bookmark;->g(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/facebook/katana/model/BookmarksGroup;

    const-string v3, "-1"

    const v0, 0x7f0b019f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/facebook/katana/model/BookmarksGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->mVisible:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->mAll:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/model/BookmarksGroup;->mAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/model/BookmarksGroup;->mVisible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
