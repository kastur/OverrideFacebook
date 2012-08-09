.class public Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "ContactAutoCompleteTextView.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 39
    const-class v1, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 66
    return-void
.end method

.method public final a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/CustomFilterable;

    .line 55
    invoke-interface {v0}, Lcom/facebook/orca/common/ui/widgets/CustomFilterable;->a()Lcom/facebook/orca/common/ui/widgets/CustomFilter;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lcom/facebook/orca/common/ui/widgets/CustomFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 56
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactAutoCompleteTextView;->clearComposingText()V

    .line 61
    return-void
.end method
