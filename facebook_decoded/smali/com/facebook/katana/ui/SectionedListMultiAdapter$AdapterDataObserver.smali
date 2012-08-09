.class Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;
.super Landroid/database/DataSetObserver;
.source "SectionedListMultiAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/SectionedListMultiAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ui/SectionedListMultiAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;->a:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ui/SectionedListMultiAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;-><init>(Lcom/facebook/katana/ui/SectionedListMultiAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;->a:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    invoke-static {v0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a(Lcom/facebook/katana/ui/SectionedListMultiAdapter;)V

    .line 23
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;->a:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->i()V

    .line 24
    return-void
.end method
